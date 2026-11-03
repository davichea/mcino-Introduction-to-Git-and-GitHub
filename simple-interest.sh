
#!/bin/bash

echo "Simple Interest Calculator"

read -p "Enter principal amount: " p
read -p "Enter annual interest rate (%): " r
read -p "Enter time period (years): " t

interest=$(awk -v p="$p" -v r="$r" -v t="$t" \
  'BEGIN { printf "%.2f", (p*r*t)/100 }')

echo "Simple Interest: $interest"
