#This program lets you convert degrees to fahrenheit or vice versa.

read -p "Type 'F' to convert degrees to fahrenheit or Type 'C' to convert fahrenheit to degrees:" choice

case $choice in

F)
read -p "The value in degrees is:" deg
if((deg<0))
then
echo "The temperature is below freezing point."
elif((deg>100))
then
echo "The temperature is above freezing point."
else
function dtof()
{
echo "F" "=" $((deg*9/5+32))
}
dtof
fi
;;

C)
read -p "The value in fahrenheit is:" fah
if((fah<32))
then
echo "The temperature is below freezing point."
elif((fah>212))
then
echo "The temperature is above freezing point."
else
mb=$((fah-32))
function ftod()
{
echo "C" "=" $((mb*5/9))
}
ftod
fi
;;

*) echo "Error: Type correct letter"
esac
