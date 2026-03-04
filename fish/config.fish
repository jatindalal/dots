function fish_greeting
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    # python venv
    alias activate="source ~/venv/bin/activate.fish"
    alias a="activate"

    # tmux
    alias tmux="tmux -u"
    alias t="tmux"

    # eza
    alias l="eza --icons"
    alias ls="eza --icons"
    alias ll="eza -lg --icons"
    alias la="eza -lag --icons"
    alias lt="eza -lTg --icons"
    alias lt1="eza -lTg --level=1 --icons"
    alias lt2="eza -lTg --level=2 --icons"
    alias lt3="eza -lTg --level=3 --icons"
    alias lta="eza -lTag --icons"
    alias lta1="eza -lTag --level=1 --icons"
    alias lta2="eza -lTag --level=2 --icons"
    alias lta3="eza -lTag --level=3 --icons"

    alias lg="lazygit"
end

function intel_shell
    arch -x86_64 zsh
end

function ytdl
    /Users/jd/Movies/downloads/yt-dlp_macos -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" $argv
end

function use_gcc
    set -gx CC (brew --prefix gcc)/bin/gcc-15
    set -gx CXX (brew --prefix gcc)/bin/g++-15

    set -gx CPLUS_INCLUDE_PATH /opt/homebrew/opt/gcc/include/c++/15/:(xcrun -show-sdk-path)/usr/include
    set -gx LIBRARY_PATH $LIBRARY_PATH:(xcrun -show-sdk-path)/usr/lib

    set -gx CFLAGS "-isysroot "(xcrun -show-sdk-path)" $CFLAGS"
    set -gx CXXFLAGS "-isysroot "(xcrun -show-sdk-path)" $CXXFLAGS"
    set -gx LDFLAGS "-L"(xcrun -show-sdk-path)"/usr/lib $LDFLAGS"
end

function fish_prompt
    set last_status $status

    # inside git repo?
    command git rev-parse --is-inside-work-tree >/dev/null 2>/dev/null
    if test $status -eq 0

        set git_changes (command git status --porcelain 2>/dev/null)

        if test (count $git_changes) -gt 0
            set dirty "*"
        end
    end

    # red star
    if test -n "$dirty"
        set_color red
        printf "%s" $dirty
    end

    # source control (git)
    set git_info (fish_git_prompt "[%s]")

    # current directory (shortened)
    set dir (prompt_pwd)

    # output
    set_color green
    printf "%s" $git_info

    set_color cyan
    printf "[%s]" $dir

    set_color normal
    printf "\$ "
end

if test "$TERM_PROGRAM" = "iTerm.app"; and test -e "$HOME/.iterm2_shell_integration.fish"
    source "$HOME/.iterm2_shell_integration.fish"
end


# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
