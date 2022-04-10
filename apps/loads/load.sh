Load(){
  top -n 1 | sed -n '1p' | awk '{print "load_5!"$12"load_10!"$13"load_15!"$14}' |
   awk '{ print $0 "," strftime("%Y-%m-%d %H:%M:%S",systime())}' &>> $(cd $(dirname $0);pwd)/load.html
}

while true;do
  sleep 10
  Load
done