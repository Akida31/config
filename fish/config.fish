set -x PATH $PATH $HOME/.cargo/bin
set -x GPG_TTY (tty)
set -x QT_QPA_PLATFORMTHEME qt5ct
set -x QT_AUTO_SCREEN_SCALE_FACTOR 0
set -x GTK2_RC_FILES $HOME/.gtkrc-2
set -x LANG en_US.UTF-8
set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src

# remove std greeting
set fish_greeting 

alias ll="ls -la"
alias la="ls -a"
alias l="ls"
alias grep="grep --colour=auto"
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less

# own aliases
alias pg="ping google.com"
alias battery="acpi | awk '{ gsub(\",\",\"\"); print $4 }'"
alias e=$EDITOR
alias p="ps -aux | grep"
alias open="xdg-open"
alias o="xdg-open"
alias eu="setxkbmap eu"
alias g="git"
alias c="cargo"

# reset HDMI to high resolution
alias hdmi="xrandr --output HDMI-1 --mode 1024x768; sleep 3; xrandr --output HDMI-1 --mode 1400x1050"

# reload panels
alias panel="killall xfce4-panel; sleep 0.1; xfce4-panel > /dev/null 2>&1 & disown"

# use improved tools
if command -v exa &> /dev/null
    alias ls="exa"
end

if command -v bat &> /dev/null
    alias cat="bat"
end

# typos
alias nivm="nvim"

setxkbmap eu

starship init fish | source
