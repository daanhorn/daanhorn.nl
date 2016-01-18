+++
categories = ["Development"]
date = "2015-12-23T10:25:30+01:00"
description = "How I build this site"
draft = false
image = "/img/post-bg.jpg"
tags = ["development", "hugo", "github", "digital ocean", "docker"]
title = "Building a blog using Hugo, GitHub, Digital Ocean and Docker"
+++

Finally, my first post! So first off all, why did I build this site anyway? Well the truth is that I finally had some spare time to spend, so I wanted to learn something new and thought that writing about it forced me to learn it quite well. And while I'm writing, I might just as well share it with the rest of the world. So during the last few weeks, among other fun stuff, I build this blog using Hugo, GitHub, Digital Ocean and Docker. While this may not be the way you would setup your first blog, it was my goal to learn something new and to just have some fun while I was at it. And surely I had a lot of fun doing this!

## Why Hugo
I was looking for a great blogging tool and found out that static site generators would fit my needs, as I love to write Markdown and have the site generated from that. So a few tools made sense, among which Jekyll, Middleman and ofcourse Hugo. In the end I choose Hugo for several reasons:

- **Speed**. Hugo generates pages really fast which makes it comfortable to continuously generating the site while developing and creating content
- **Features**. Hugo is quite complete feature wise and support things like archetypes, themes, templates and taxonomies
- **Deployment**. Hugo is written in Go, which makes installation of Hugo, which is just a binary, very easy
- **Community**. Hugo is being actively developed and used
- **Documentation**. Hugo has great documentation on [https://gohugo.io](https://gohugo.io)
- **Fun**. Hard to explain this, but somehow I have fun using Hugo!

## Why Digital Ocean and Docker
So then you may ask why I choose Digital Ocean and Docker to build my blog on. Well, I wanted to be able to have full control myself and not depend on my provider for anything. Once again, because I like to have fun configuring and running my own stuff. Therefore I would like a cloud platform and from earlier experience I liked the ease of use, performance and pricing of Digital Ocean. On top of that I wanted to run Docker, because that makes it easy to deploy my blog and also run anything else besides my blog. This is easy to do, because Digital Ocean offers Docker as a [One-Click Application](https://www.digitalocean.com/features/one-click-apps/).

## Building a new site
To build a site using Hugo, you first need to install Hugo itself. This is well documented on [this](https://gohugo.io/overview/installing/) page, so I will not repeat those words here again.

Next thing is to generate a new site, for which Hugo has a useful command:
``` bash
$ hugo new site mysite
```
To create a skeleton content page, use:
``` bash
$ hugo new about.md
```
After that you can add a custom theme. I used the `bootstrap-clean-blog` theme, but many can be found [here](https://themes.gohugo.io/). A theme can be easily added to the `themes` folder. Using git makes this easy, as most themes are hosted on GitHub. E.g.:
``` bash
$ mkdir themes
$ cd themes
$ git clone https://github.com/humboldtux/startbootstrap-clean-blog.git
```
To prevent this error:
``` bash
ERROR: 2015/12/23 Unable to render [page/archive.html _default/archive.html theme/page/archive.html theme/_default/archive.html]
ERROR: 2015/12/23 Expecting to find a template in either the theme/layouts or /layouts in one of the following relative locations [page/archive.html _default/archive.html theme/page/archive.html theme/_default/archive.html]
```
I added `layouts/_default/list.html` to override the same template in the `bootstrap-clean-blog` theme. In this file I changed line 22 to only look for an archive.htlm in `post` content:
```
{{ range .Paginator.Pages }}
```

into:
```
{{ range where .Paginator.Pages "Section" "post" }}
```

To have a first look at what is created so far, start a Hugo server and use the correct theme and build the drafts (initial content is marked as draft):
``` bash
$ cd ..
$ hugo server --theme=startbootstrap-clean-blog --buildDrafts
```

## Editing
To edit the content I use Atom ([https://atom.io](https://atom.io)) and the Markdown-Writer plugin.  
When the Hugo server is started using `-s` and `-w` parameters, it will automatically reload any open Javascript enabled browser pages using LiveReload technology (don't forget the dot at the end of the line, which points to the source directory that is being used by Hugo to regenerate pages after sources have changed):
``` bash
$ hugo server --theme=startbootstrap-clean-blog --buildDrafts -ws .
```
Change `content/about.md` to make it look like this:
``` markdown
+++
date = "2015-12-23T22:12:34+01:00"
draft = false
title = "about"
menu = "main"
weight = -150
type = "about"

+++

Hello world!
```
`--theme=startbootstrap-clean-blog` can be left out if it has been added to the `config.toml` configuration file in the root directory:
``` toml
theme = "startbootstrap-clean-blog"
```
Undraft the content file if you're satisfied and running the server again looks like:
``` bash
$ hugo undraft about.md
$ hugo server -ws .
```
Now you can see the `about` section in the menu on the top of the page.

## Simple Workflow
As said before, I use Docker as a platform to run the blog on. So how does a typical workflow look like? I tried to keep it simple for now. It currently looks like this:  
1. Create site and content on local machine
2. Commit all to GitHub
3. Pull from GitHub on Digital Ocean machine
4. Build and run Docker image on Digital Ocean machine

To ease deployment a little, I've created some simple Bash scripts to `stop`, `clean`, `build`, and `run` the Docker image. They can be found [here](https://github.com/daanhorn/daanhorn.nl) on GitHub.

## Possible changes/improvements
Although current setup is sufficient for my simple usecase, there could ofcourse be some improvements:

- Separate web server (Apache or Nginx). Hugo would only generate the site and the separate web server would actually serve the pages
- Hosting on GitHub Pages and `git` workflow as described [here](https://gohugo.io/tutorials/github-pages-blog/)
- Docker deployment flow using orchestration and service discovery to ensure high availability and scalability
- Docker Hub for hosting and building Docker image to simplify the server deployment, as there will be no need for building on the server itself

## Finally
If you are looking to build a blog yourself, you could use my solution, but maybe you should decide what makes you smile in the end!

To learn more about Hugo, just read the great documentation: [https://gohugo.io/overview/introduction/](https://gohugo.io/overview/introduction/)

Code for my site is hosted on GitHub: [https://github.com/daanhorn/daanhorn.nl](https://github.com/daanhorn/daanhorn.nl)

And finally, I would like to thank Benoit Benedetti for building the `bootstrap-clean-blog` theme for Hugo and Yigal Duppen for his Docker / Hugo setup as described [here](https://github.com/publysher/docker-hugo).

If you have any question or comments, please let me know by contacting me [here]({{<ref "contact.md">}})
