#!/bin/bash

echo "Welcome to the Calculator!"
read -p "Enter your name: " name
read -p "Enter first number: " num1
read -p "Enter second number: " num2
echo "Choose operation: +, -, *, /, odd/even"
read -p "Enter operation: " op

is_even_odd() {
    if (( $1 % 2 == 0 )); then
        echo "even"
    else
        echo "odd"
    fi
}

if [[ "$op" == "+" ]]; then
    ans=$((num1 + num2))
    eo=$(is_even_odd $ans)
    echo "Hello $name, you entered $num1 + $num2. Your Ans is $ans, which is $eo."
elif [[ "$op" == "-" ]]; then
    ans=$((num1 - num2))
    eo=$(is_even_odd $ans)
    echo "Hello $name, you entered $num1 - $num2. Your Ans is $ans, which is $eo."
elif [[ "$op" == "*" ]]; then
    ans=$((num1 * num2))
    eo=$(is_even_odd $ans)
    echo "Hello $name, you entered $num1 * $num2. Your Ans is $ans, which is $eo."
elif [[ "$op" == "/" ]]; then
    if [[ "$num2" -eq 0 ]]; then
        echo "Cannot divide by zero."
    else
        ans=$(echo "scale=2; $num1 / $num2" | bc)
        # For division, check if the answer is an integer before checking even/odd
        if [[ "$ans" =~ ^-?[0-9]+$ ]]; then
            eo=$(is_even_odd $ans)
            echo "Hello $name, you entered $num1 / $num2. Your Ans is $ans, which is $eo."
        else
            echo "Hello $name, you entered $num1 / $num2. Your Ans is $ans."
        fi
    fi
elif [[ "$op" == "odd/even" ]]; then
    res1=$(is_even_odd $num1)
    res2=$(is_even_odd $num2)
    echo "You entered $num1 and $num2. Your Ans is $num1 is $res1 and $num2 is $res2."
else
    echo "Invalid operation."
fi