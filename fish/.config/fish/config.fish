set fish_greeting

#OhMyPosh theme
#oh-my-posh init fish --config $HOME/dotfiles/ohmyposh/.config/ohmyposh/tokyo-night.json | source
oh-my-posh init fish --config $HOME/dotfiles/ohmyposh/.config/ohmyposh/catppuccin-mocha.json | source

#Zoxide
zoxide init --cmd cd fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end
