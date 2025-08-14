#!/bin/bash

echo "Welcome to Luu's Calculator!"
read -p "Enter your name: " name

read -p "Enter first number: " num1
if ! [[ "$num1" =~ ^-?[0-9]+$ ]]; then
    echo "First number is not a valid integer."
    exit 1
fi

read -p "Enter second number: " num2
if ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Second number is not a valid integer."
    exit 1
fi

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
        if command -v bc >/dev/null 2>&1; then
            ans=$(echo "scale=2; $num1 / $num2" | bc)
            if [[ "$ans" =~ ^-?[0-9]+$ ]]; then
                eo=$(is_even_odd $ans)
                echo "Hello $name, you entered $num1 / $num2. Your Ans is $ans, which is $eo."
            else
                echo "Hello $name, you entered $num1 / $num2. Your Ans is $ans."
            fi
        else
            ans=$((num1 / num2))
            eo=$(is_even_odd $ans)
            echo "Hello $name, you entered $num1 / $num2. Your Ans is $ans, which is $eo. (Integer division, bc not found)"
        fi
    fi
elif [[ "$op" == "odd/even" ]]; then
    res1=$(is_even_odd $num1)
    res2=$(is_even_odd $num2)
    echo "You entered $num1 and $num2. Your Ans is $num1 is $res1 and $num2 is $res2."
else
    echo "Invalid operation."
fi