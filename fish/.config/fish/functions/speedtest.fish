function speedtest --wraps='=curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -' --wraps='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -' --description 'alias speedtest=curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'
  curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 - $argv
        
end
