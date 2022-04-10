Cpu(){
  top -n 1 | sed -n '3p' | awk '{print "US!"$2"&SY!"$4"&Free!"$8"&Time!"}' | awk '{ print \
  $0 strftime("%Y-%m-%d %H:%M:%S",systime())}'  &>> $(cd $(dirname $0);pwd)/top.html
}

while true;do
  sleep 10
  Cpu
done