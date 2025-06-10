set fish_greeting
set --export Editor "subl -w"
source "$HOME/.config/fish/abbreviations.fish"

# OhMyPosh theme
#oh-my-posh init fish --config $HOME/dotfiles/ohmyposh/.config/ohmyposh/catppuccin.json | source
oh-my-posh init fish --config $HOME/dotfiles/ohmyposh/.config/ohmyposh/dracula.json | source

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
fish_config theme choose "Dracula Official"
set -Ux FZF_DEFAULT_OPTS "--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
