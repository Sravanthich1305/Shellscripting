###Palindrome number
echo "Enter a number: "
read number

reverse=0
original=$number

while [ $number -ne 0 ]
do
  reminder=$(( $number % 10 ))
  reverse=$(( $reverse * 10 + $remainder ))
  number=$(( $number / 10 ))
done

if [ $original -eq $reverse ]
then
  echo "$original is a Palindrome."
else
  echo "$original is not a palindrome."

fi