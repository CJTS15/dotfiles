function cctv1 --wraps=rstp://thewatcher1admin:thewatcher1adminrock@192.168.50.66:554/stream1 --wraps='ffplay rstp://thewatcher1admin:thewatcher1adminrock@192.168.50.66:554/stream1' --wraps='ffplay rstp://thewatcher1admin:thewatcher1adminrock1103@192.168.50.66:554/stream1' --wraps=rtsp://thewatcher1admin:thewatcher1adminrock@192.168.50.66:554/stream1 --wraps='ffplay rtsp://thewatcher1admin:thewatcher1adminrock@192.168.50.66:554/stream1' --wraps='ffplay rtsp://thewatcher1admin:thewatcher1adminrock1103@192.168.50.66:554/stream1' --description 'alias cctv1=ffplay rtsp://thewatcher1admin:thewatcher1adminrock1103@192.168.50.66:554/stream1'
  ffplay rtsp://thewatcher1admin:thewatcher1adminrock1103@192.168.50.66:554/stream1 $argv
        
end
