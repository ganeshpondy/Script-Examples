#!/bin/bash
# Define a function that takes two arguments

read -p 'Enter First Number: ' first_number
read -p 'Enter secound Number: ' secound_number
echo -e "---------------------------- "
echo -e 'Valid Options \n1 Addition \n2 Subtraction \n3 Multiplication \n4 Division'
echo -e "---------------------------- \n "
read -p 'Enter the Step: ' step_name


function Addition {
    result=$(($1 + $2))
    echo $result
}
function Subtraction {
    result=$(($1 - $2))
    echo $result
}
function Multiplication {
    #result=$( ("$1" \* "$2") )
    result=$(($1 * $2))
    echo "$result"
}
function Division {
    result=$(($1 / $2))
    echo $result
}
# Call the function and store the result
case $step_name in
    1) result=$(Addition "$first_number" "$secound_number") ;;
    2) result=$(Subtraction "$first_number" "$secound_number")  ;;
    3) result=$(Multiplication "$first_number" "$secound_number") ;;
    4) result=$(Division "$first_number" "$secound_number") ;;
    *) echo 'Not a Valid Option' ; exit 1
esac

# Display the result
echo "The result is $result"

