fish_config theme choose "Catppuccin Mocha"


if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2026-01-07 08:31:13
set PATH $PATH /home/koen/.local/bin

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t -- $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -f backward-delete-char history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end
