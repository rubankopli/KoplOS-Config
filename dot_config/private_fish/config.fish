if status is-login
    # Exports

    ## Add user's private bin to the path, if it exists
    if test -d "$HOME/.local/bin"
        fish_add_path $HOME/.local/bin
    end

    # end status is-login
end

# Commands to run in interactive sessions can go here
# In general, make/use configuration files under `conf.d` for most things, more 'global' configurations can go here
if status is-interactive
    # Exports

    ## ls colorization
    set --global --export LS_COLORS "$(vivid generate molokai)"

    ## Used for colorization by some cli utilities including 'ip'
    ### Light-Green Text ; Dark Purple Background [https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit]
    set -xU COLORFGBG "10;5"

    # Abbreviations (Different from aliases! Aliases should be placed in 'functions/')

    # end if  is-interactive
end
