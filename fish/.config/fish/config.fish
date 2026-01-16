set fish_greeting
set --export Editor "subl -w"
source "$HOME/.config/fish/abbreviations.fish"

# OhMyPosh theme
oh-my-posh init fish --config $HOME/dotfiles/ohmyposh/.config/ohmyposh/catppuccin.json | source
#oh-my-posh init fish --config $HOME/dotfiles/ohmyposh/.config/ohmyposh/dracula.json | source

# Zoxide
zoxide init --cmd cd fish | source

# Yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# Fzf
set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#363A4F,bg:#24273A,spinner:#F4DBD6,hl:#ED8796 \
--color=fg:#CAD3F5,header:#ED8796,info:#C6A0F6,pointer:#F4DBD6 \
--color=marker:#B7BDF8,fg+:#CAD3F5,prompt:#C6A0F6,hl+:#ED8796 \
--color=selected-bg:#494D64 \
--color=border:#6E738D,label:#CAD3F5"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
