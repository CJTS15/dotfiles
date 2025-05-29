set fish_greeting

#OhMyPosh theme
#oh-my-posh init fish --config $HOME/dotfiles/ohmyposh/.config/ohmyposh/tokyo-night.json | source
oh-my-posh init fish --config $HOME/dotfiles/ohmyposh/.config/ohmyposh/catppuccin-mocha.json | source

#Zoxide
zoxide init --cmd cd fish | source

#Fz
fzf --fish | source

#Yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
