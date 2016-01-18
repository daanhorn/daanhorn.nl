+++
categories = ["Continuous Delivery"]
date = "2016-01-17T16:47:18+01:00"
description = "Why I love Jenkins Workflow"
draft = false
image = "/img/post-bg.jpg"
tags = ["development", "continuous delivery", "jenkins"]
title = "Getting real with Jenkins Workflow"

+++
Nowadays many CI solutions exists. And in last few years many new came to town, like Travis CI, Codeship and CircleCI. But I still think that Jenkins is a good choice as CI server. While it may not be the most straight forward solution, leaving you with many choices to maken, it does support a really wide selection of tooling and has plugins for many.
Unfortunately, Jenkins was missing on something. Something that all tools were missing actually... Really good support for Continuous Delivery pipelines!
In this article I talk about pipelines, workflows and flows. By these I really mean the same thing, an orchestration of (Jenkins) jobs to be executed.

## What was missing?
So what exactly was it that was missing in Jenkins?

### Central defined pipeline
**Before: Pipeline defined across all jobs**  
There was just no way of defining a pipeline in a single location. This means changing the flow of a pipeline requires changes in many places.  
**Jenkins Workflow: A single Groovy file**  
This is being solved by defining the entire pipeline in a single Groovy (Jenkins)file. Changing this is easy.

### High level abstractions
**Before: Jobs as abstractions**  
As there was no way of defining abstractions in your Jenkins pipeline, the way abstractions we implemented used just a job for these abstraction, like a `multijob` or some custom scripting job.  
**Jenkins Workflow: Stages**    
By using stages, it is really easy to wrap parts of your pipeline in a stage. E.g.:
```
stage 'build'
  node{ ... }
stage name: 'test', concurrency: 3
  node{ ... }
stage name: 'deploy', concurrency: 1
  node{ ... }
```

### Visualize the flow
**Before: Just a bunch of Jenkins jobs**  
Jenkins had a dashboard view, but you have to build that manually. This also means that you have to keep it in sync with the actual pipeline as implemented across all jobs.  
**Jenkins Workflow: Stage view (enterprise feature)**  
The Jenkins Workflow Stage View gives a clear overview of the actual pipeline.  
{{< figure src="/img/workflow-big-responsive.png" alt="Stage View plugin" >}}

### Version control
**Before: Export and import XML files**  
As the workflow was scattered all over the place in many jobs being tied together, the only way to version control anything was by adding an XML export of all files in version control. But this means there is no versioning of the actual pipeline.  
**Jenkins Workflow: Pipeline in central file**  
The central file used in Jenkins Workflow enables easy version control and versioning of the actual pipeline. A change to the pipeline can be easily spotted, by just looking at the history of this single file.

### Pipeline templates
**Before: Building new pipelines required a lot of copy-pastes**  
Each job had to be copy-pasted into a new one. Ordening in folders using the `Folders` plugin helped a little, but it was still not really perfect.  
**Jenkins Workflow: Pre-defined pipeline templates (enterprise feature)**  
Cloudbees Jenkins Platform supports Workflow templates.

## And what more to love about Jenkins Workflow?
Jenkins Workflow brings even more than just the missing parts!

### Connect existing jobs
To enable quick enablement, Jenkins Workflow support running your existing jobs. This way you don't have to rebuild all jobs at once.  
This is done by using the `build job` command like following:  
```
def job = build job: 'say-hello', parameters: [[$class: 'StringParameterValue', name: 'who', value: 'Friends']]
```

### Customization
The scripts are based on Groovy DSL. Therefore it is easy to add some custom logic to the script when required and other files can be imported to enable reuse of scripts.  
Next there is the Plugin support. Many plugins exists for Jenkins already and when these are kept Workflow compatible, they can be used straight from Groovy DSL.

### Docker native support
Docker integration is one of the strategic decisions from Cloudbees for Jenkins. That is why integration between Jenkins Workflow and Docker is great! It is possible to build/tag/start/push/pull images, run/stop containers, run on remote Docker servers, and so on.

### Checkpoints (enterprise feature)
By setting checkpoints in the Workflow script, Jenkins is able to restart the pipeline from that point. Even when the Jenkins server reboots or crashes.

### Approvals
Manual approval is supported using `input`. A has to approve to continue the pipeline. This can be handy for manual security testing for instance. This fits nicely in the Jenkins Workflow Stage View UI, giving a user friendly interface.
```
input 'Are you sure?'
```

### Stashing and archiving
Jenkins Workflow support stashing files to share files between different Jenkins nodes. Archive works just like stash, but stash removes the files after pipeline completion, where archive ensures that these files are kept for later easy access.

### Tools
The `tools` command makes it possible to install a given tool on the Jenkins node on which the script will be executed. E.g. to install and run Maven on a node:  
```
def mvnHome = tool 'M3'
sh "${mvnHome}/bin/mvn -B verify"
```
## An example
```
stage 'build'
node {
  git 'https://github.com/cloudbees/todo-api.git' withEnv(["PATH+MAVEN=${tool 'm3'}/bin"]) {
    sh "mvn -B –Dmaven.test.failure.ignore=true clean package"
  }
  stash excludes: 'target/', includes: '**', name: 'source'
}
stage 'test'
parallel 'integration': {
  node {
    unstash 'source' withEnv(["PATH+MAVEN=${tool 'm3'}/bin"]) {
      sh "mvn clean verify"
    }
  }
}, 'quality': {
  node {
    unstash 'source' withEnv(["PATH+MAVEN=${tool 'm3'}/bin"]) {
      sh "mvn sonar:sonar"
    }
  }
}
stage 'approve'
timeout(time: 7, unit: 'DAYS') {
  input message: 'Do you want to deploy?', submitter: 'ops'
}
stage name:'deploy', concurrency: 1
node {
  unstash 'source' withEnv(["PATH+MAVEN=${tool 'm3'}/bin"]) {
    sh "mvn cargo:deploy"
  }
}
```

## Final words
So Jenkins has some great support for Continuous Delivery pipelines. This really helps teams in focusing on the delivery of the thing they are building. It is obvious what steps it takes to get something into production. Also it becomes clear where most time is lost and when a parallel process might improve on shorter feedback loops. Kaizen!  

Useful links:  
- https://dzone.com/refcardz/continuous-delivery-with-jenkins-workflow
- https://documentation.cloudbees.com/docs/cookbook/_continuous_delivery_with_jenkins_workflow.html
