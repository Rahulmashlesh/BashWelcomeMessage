#bashrc stuff
alias vibrc="vi ~/.bashrc"
alias nanobrc="nano ~/.bashrc"
alias nbrc="nano ~/.bashrc"
alias vbrc="vi ~/.bashrc"
alias sbrc="source ~/.bashrc"

#ls stuff
alias l="ll"
#alias kk="ll"
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


###Make prompt interesting with responses
function success_indicator() {
    if [ $? -eq 0 ] ; then
        echo "😎"
    else
        echo "💩"
    fi
}
#Disable the below line and source to cancel this awesom feature
export PS1='$(success_indicator)'$PS1


echo "Welcome to the lab: " $HOSTNAME

#M#aking the prompt fancy :P
export PS1="\[\033[01;32m\]\u@\h:\[\033[01;34m\] \W \$\[\033[00m\]"


# adding lang settings to stop python from using ASCII
export LC_ALL=en_US.utf8
export LANG=en_US.utf8



# IntelIj added to path
#export PATH="$PATH:/home/rmashles/softwares/idea-IU-212.4746.92/bin"
#alias ij="sh /home/rmashles/softwares/idea-IU-212.4746.92/bin/idea.sh &"

###Alias added by rmashles to make life simpler
alias ex="exit"
alias se="echo YOU_ARE_ON_ENDURANCE!!"
#alias code="cd /home/rmashles/javaProjects/sps"
#alias dep="cd /home/rmashles/spsinstall"
alias eo="echo"

#git stuff
alias g="git"
alias gl="git log"
alias gs="git status"
alias gpl="git pull"
alias gb="git branch"
alias gc="git checkout"
