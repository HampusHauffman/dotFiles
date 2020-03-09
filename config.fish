function fish_greeting
end

set -g theme_color_scheme dark
alias v="nvim"
alias p="sudo pacman -S"
cat ~/.cache/wal/sequences &
# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
