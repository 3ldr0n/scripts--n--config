function git_branch
    git branch | sed -n '/\* /s///p'
end

# ENV variables
export EDITOR=emacs
export GIT_EDITOR=vim
export PROJECTS=$HOME/projects
export SCRIPTS=$PROJECTS/snippets/shell
export PATH="$PATH:$HOME/.local/bin"

# Shortcuts
abbr v "nvim"
abbr vi "nvim"
abbr vim "nvim"
abbr r "ranger"
abbr gw "./gradlew"

abbr ls "ls -N --color"
abbr ll "ls -laho"
abbr l "ls -l"
abbr _ "sudo"

# Git shortcuts
abbr gst "git status"
abbr gd "git diff"
abbr gl "git pull"
abbr gf "git fetch"
abbr gp "git push"
abbr gpsup "git push --set-upstream origin $(git_branch)"
abbr gpf "git push --force-with-lease"
abbr gco "git checkout"
abbr gcb "git checkout -b"
abbr ga "git add"
abbr gaa "git add --all"
abbr gc "git commit --verbose"
abbr gcl "git clone --recurse-submodules"
alias gc! "git commit --verbose --amend"

# Scripts
abbr volume "sh $SCRIPTS/volume.sh"

# asdf
source /opt/asdf-vm/asdf.fish

# GPG
export GPG_TTY=(tty)

function fish_prompt
    if test $status -eq 0
        set_color green
    else
        set_color red
    end
    echo -n "λ "
    set_color yellow
    echo -n (whoami) " "
    set_color purple
    echo -n "["(prompt_pwd)"] "
    if test -d .git
        set_color blue
        echo -n (fish_git_prompt)
    end
    set_color cyan
    echo -n " → "
end
