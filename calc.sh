#!/bin/bash

# Calculator

echo "Simple Calculator"
echo "-----------------"

# Ask for two numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Display the operation menu
echo "Select operation:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"

# Read the user's choice
read -p "Enter choice [1-4]: " choice

# Perform the operation based on the user's choice
case $choice in
    1)
        result=$(echo "$num1 + $num2" | bc)
        echo "Result: $num1 + $num2 = $result"
        ;;
    2)
        result=$(echo "$num1 - $num2" | bc)
        echo "Result: $num1 - $num2 = $result"
        ;;
    3)
        result=$(echo "$num1 * $num2" | bc)
        echo "Result: $num1 * $num2 = $result"
        ;;
    4)
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
        else
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "Result: $num1 / $num2 = $result"
        fi
        ;;
    *)
        echo "Invalid choice."
        ;;
esac

