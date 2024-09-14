#!/bin/bash

# CALCULATOR FOR BASIC MATHEMATICS

echo "CALCULATOR"
echo "START================START"

# Ask for two numbers
read -p "Please enter first number: " num1
read -p "Please enter second number: " num2

# Display the operation menu
echo "Select your operation:"
echo "1. Addition(To add two numbers) (+)"
echo "2. Subtraction(To subtract two numbers) (-)"
echo "3. Multiplication (To multiply) (*)"
echo "4. Division (To divide two numbers) (/)"

# Read and select the user's choice
read -p "Select arithmetic choice between [1-4]: " choice

# Perform the arithmetic operations based on the choice selected
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
#
#This calculator has been improved
#Some of the changes made 
#include
#different instructions
#and so many other things 
