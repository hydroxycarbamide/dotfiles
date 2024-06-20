zoxide init fish | source
if status is-interactive
    # fenv source /etc/profile
    # Commands to run in interactive sessions can go here

    # doas
    # alias sudo='doas'

    # ls
    alias exa='eza'
    alias l='exa -lh --icons'
    alias ls='exa --icons --group-directories-first'
    alias ll='exa -lah --icons'
    alias lm='exa -m'
    alias lr='exa -R'
    alias lg='exa -l --group-directories-first --icons'
    alias tree='exa --tree'

    # git
    alias gcl='git clone --depth 1'
    alias gi='git init'
    alias ga='git add'
    alias gc='git commit -m'
    alias gp='git push origin master'

    # cat
    alias cat='bat -p'

    # cd/zoxide
    alias cd='z'

    # helix
    alias hx='helix'
    alias h='helix'

    # vim
    alias vim='nvim'
    alias v='vim'

    # emacs
    # alias emacs='emacsclient -nc -s instance1'

    # pn
    alias pn='pnpm'

    # paru
    alias pa='paru'
    alias yay='paru'

    # codium wayland
    # alias codium='codium --enable-features=UseOzonePlatform --ozone-platform=wayland'
    alias codiumwl='codium --enable-features=UseOzonePlatform --ozone-platform=wayland'
    alias codewl='code --enable-features=UseOzonePlatform --ozone-platform=wayland'

    # systemctl
    alias sys='systemctl'

    alias sysuser='systemctl --user'

    # fancy cp
    alias fcp='rsync -avP'

    # pager
    alias less='bat --style plain'

    # helix
    alias hx='helix'

    # unset
    alias unset 'set --erase'

    # adb
    alias adb='HOME="$XDG_DATA_HOME"/android adb'

    function nnn_cd
        if test -n "$NNN_PIPE"
            printf "%s\0" "0c$PWD" > "$NNN_PIPE" !&
        end
    end
    
    trap nnn_cd EXIT
end

# pnpm
set -gx PNPM_HOME "/home/eric/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# nnn
alias N="sudo -E nnn"
set -gx LC_COLLATE "C"
set -gx NNN_PAGER "cat"
set -gx NNN_OPTS "eaA"
set -gx NNN_OPENER '/home/eric/.config/nnn/plugins/nuke'
set -gx NNN_PLUG 'd:dragdrop;f:finder;i:!fish -i*;m:mtpmount;o:fzopen;p:preview-tui;r:rsynccp;s:suedit;t:nmount;v:imgview;z:autojump'
set -gx SPLIT 'v' # to split Kitty vertically

set BLK "03"
set CHR "03"
set DIR "04"
set EXE "02"
set REG "07"
set HARDLINK "05"
set SYMLINK "05"
set MISSING "08"
set ORPHAN "01"
set FIFO "06"
set SOCK "03"
set UNKNOWN "01"
set -gx NNN_FCOLORS "$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$UNKNOWN"
set -gx NNN_COLORS "#04020301;4231"
set -gx NNN_TERMINAL "foot"

# source  /opt/miniconda3/etc/fish/conf.d/conda.fish

starship init fish | source
