set fish_greeting

#OhMyPosh theme
oh-my-posh init fish --config $HOME/.poshthemes/tokyonight_storm.omp.json | source

#Zoxide
zoxide init --cmd cd fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end
