#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "===== Simple Interest Calculator ====="

# Take input from the user
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (in %): " rate
read -p "Enter Time Period (in years): " time

# Calculate simple interest using bc for decimal support
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo "----------------------------------------"
echo "Principal Amount   : $principal"
echo "Rate of Interest   : $rate%"
echo "Time Period         : $time years"
echo "Simple Interest     : $simple_interest"
echo "Total Amount         : $total_amount"
echo "========================================"
