+++
categories = ["Development"]
date = "2017-02-02T22:13:45+01:00"
description = "How to set up the commandline to look and feel good."
draft = false
image = "/img/post-bg.jpg"
tags = ["development", "oh-my-zsh", "zplug", "zsh"]
title = "Getting comfortable with the commandline, using zplug"

+++

So you may know that I like to use the commandline alot when developing. To me this became even more pleasant when I started using [oh-my-zsh](http://ohmyz.sh/) and it's many useful plugins. It really helps speed thing up with a lot of completions and makes the commandline look a lot better!

# Zplug
After using oh-my-zsh for a while, I recently switched to [zplug](https://zplug.sh/) because it is a bit faster and more flexible. One of the great things of zplug is that it is compatible with many different plugins, so I could reuse some of the oh-my-zsh plugins that I like.

Here is an example of what my commandline looks like now:  
{{< figure src="/img/zplug.png" alt="zplug" >}}

# Themes
To make the commandline look good, zplug can use themes from [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Themes) and [prezto](https://github.com/sorin-ionescu/prezto). I use an oh-my-zsh theme called [agnoster](https://github.com/agnoster/agnoster-zsh-theme) which has great support for Git and supports useful Powerline-patched fonts to display little icons that show the state of a Git branch.

# Plugins
Plugins is what makes oh-myzsh, zplug and the like great. There are literally hundreds of plugins, which add support to zplug for all the tools you use occasionally. A list of some of the plugins can be found here:
- [awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins)
- [oh-my-zsh plugins](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins)

Some of the plugins I use:
- [zplug](https://github.com/zplug/zplug)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
- [k](https://github.com/rimraf/k)
- [git](http://jasonm23.github.com/oh-my-git-aliases.html)
- [agnoster](https://github.com/agnoster/agnoster-zsh-theme)

# Setup
Getting things set up properly in zplug might be challenging the first time, so I'll explain next what I did to set things up. As an example I've added the commands to get things going in Ubuntu, but it could work with any Linux ofcourse.

1 - Install zsh
```
sudo apt-get install zsh
```

2 - Install zplug
```
curl -sL zplug.sh/installer | zsh
```

3 - Install Powerline fonts
```
mkdir ~/powerline-fonts
cd ~/powerline-fonts
git clone https://github.com/powerline/fonts.git .
./install.sh
```

4 - Select a powerline font in terminal settings. In Ubuntu, open a terminal using CTRL-ALT-T. In menu go to Edit->Profile Preferences. On tab General, select a Powerline "Custom font" (has Powerline in it's name).
{{< figure src="/img/terminal-settings.png" alt="Terminal settings" >}}

5 - Edit `.zshrc` (which is what `.bashrc` is for Bash) to your liking. See below what mine looks like currently. Note that `ZSH_THEME` sets the theme to be used with zplug and `DEFAULT_USER` hides the user name from showing in every line on the commandline when logged in as the default user.
```
DEFAULT_USER=daan
ZSH_THEME=agnoster

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Paths
export EDITOR=atom

# Aliases
# Some more basic aliases
alias ll='ls -lh'
alias la='ls -lAh'
alias l='ls -lah'
alias md='mkdir -p'
alias rd='rmdir'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd......='cd ../../../../..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

##############################
# Zplug
##############################

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

# Zplug plugins
zplug "zplug/zplug"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "rimraf/k"
zplug "b4b4r07/enhancd", use:init.sh
zplug 'plugins/git', from:oh-my-zsh
zplug "themes/agnoster", from:oh-my-zsh

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load --verbose

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```

6 - Set ZSH as default shell
```
chsh -s /bin/zsh
```

7 - Restart terminal. It might be necessary to restart Ubuntu.  

Hope you enjoyed reading this, have a nice day!
