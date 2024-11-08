###########################################
########### Stuff added by r.ash ############
###########################################

## Custom stuff added by rahul.ashlesh

## AWS variables
#export AWS_REGION=us-east-1

#maven
#export PATH="$PATH:<insert>"

## GO Stuff
#export GOPATH=~/.go
#export GOPATH="go/1.21.4"
#export GOROOT="go/1.21.4/libexec"
#export GOPRIVATE=gitlab.s.com

## Bashrc stuff
alias vibrc="vi ~/.bashrc"
alias nanobrc="nano ~/.bashrc"
alias nbrc="nano ~/.bashrc"
alias vbrc="vi ~/.bashrc"
alias sbrc="source ~/.bashrc"

# Zsh stuff
alias vz="vi ~/.zshrc"
alias sz="source ~/.zshrc"


# ls cd stuff
alias ll="ls -altr"
alias l="ll"
alias .,="cd .."
alias ..="cd ../../"
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias c="cd"

#kubernetes stuff
#alias helm="helm3"
alias k8s="kubectl"
alias k="k8s"
alias kk="k8s"
#alias kgpig="k get pods"
alias kgp="k get pods"
alias kgn="k get namespace"
alias kgns='kgn'
alias kl="kubectl log"
alias kg="kubectl get"

#terraform stuff
alias tf=terraform

# adding lang settings to stop python from using ASCII
#export LC_ALL=en_US.utf8
#export LANG=en_US.utf8

# IntelIj added to path
#export PATH="$PATH:/home/rmashles/softwares/idea-IU-212.4746.92/bin"
#alias ij="sh /home/rmashles/softwares/idea-IU-212.4746.92/bin/idea.sh &"

## Alias
alias ex="exit"
#alias se="echo YOU_ARE_ON_ENDURANCE!!"
#alias code="cd /home/rmashles/javaProjects/sps"
#alias dep="cd /home/rmashles/spsinstall"
alias repo="cd ~/repo"
alias eo="echo"

#git stuff
alias g="git"
alias glg="git log"
alias gs="git status"
alias gpl="git pull"
alias gb="git branch"
alias gc="git checkout"
alias grv="git remote -v"
export GITLAB_TOKEN=<insert>


# antigen
#source ~/antigen.zsh
#antigen init ~/.antigenrc

### zplug stuff
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

# Plugins
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/osx",   from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "clvv/fasd"
zplug "b4b4r07/enhancd"
zplug "junegunn/fzf"
zplug "unixorn/fzf-zsh-plugin", at:main
zplug "Peltoche/lsd"
zplug "g-plane/zsh-yarn-autocompletions"
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "ellie/atuin", at:main
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose


###

#enable atuin - cmd history in an sql db
eval "$(atuin init zsh)"

#Making the prompt fancy :P
#export PS1="\[\033[01;32m\]\u@\h:\[\033[01;34m\] \W \$\[\033[00m\]"

# Startship prompt
eval "$(starship init zsh)"

###Make prompt interesting with responses
function success_indicator() {
    if [ $? -eq 0 ] ; then
        echo "😎"
    else
        echo "💩"
    fi
}
#Disable the below line and source to cancel this awesom feature
#export PS1=$PS1'$(success_indicator)'
