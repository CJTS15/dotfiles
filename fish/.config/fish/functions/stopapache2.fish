function stopapache2 --wraps='sudo systemctl stop apache2' --description 'alias stopapache2=sudo systemctl stop apache2'
  sudo systemctl stop apache2 $argv
        
end
