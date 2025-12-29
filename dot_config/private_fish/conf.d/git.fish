# Git-specific fish configurations


if status is-interactive

    # Aliases #

    ## Lazygit ##
    abbr --add lg --position command lazygit

    ## Commands ##
    abbr --add gita --position command "git add . && git status"
    abbr --add gitb --position command "git branch"
    abbr --add gitspull --position command "git pull && git submodule sync --recursive && git submodule update --init --recursive"
    abbr --add gitc --position command --set-cursor=@ "git commit -m \" #comment @\""
    abbr --add gitch --position command --set-cursor=@ "git checkout @"
    abbr --add gitd --position command "git diff"
    abbr --add gitds --position command "git diff --staged"
    abbr --add gitp --position command "git push"
    abbr --add gitpf --position command "git push --force"
    abbr --add gits --position command "git status"

    ## Format Helpers ##
    abbr --add gitql --position command "git log --pretty=format:\"%h %C(cyan)%cr%Creset %Cgreen%s %Cred%d%Creset\""
    abbr --add gittr --position command "git log --graph --decorate --pretty=oneline --abbrev-commit --branches"

end
