##for loop

for name in SRAVI RAVI ; do
  echo -e my name is $name
  sleep 1
done;

a=10
while [ "$a" -gt 0 ]; do
  echo -e [\e[31m SRAVI \e[0m]
  a=$(($a-1))
  sleep
done