#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "armstrong_numbers.h"

// Function prototypes
int countDigits(int number);
int isArmstrong(int number);

// Function to calculate the number of digits in a given number
int countDigits(int number) {
    int count = 0;
    while (number != 0) {
        number /= 10;
        count++;
    }
    return count;
}

// Function to check if a number is an Armstrong number
int isArmstrong(int number) {
    int originalNumber = number;
    int numDigits = countDigits(number);
    int sum = 0;

    while (number != 0) {
        int digit = number % 10;
        sum += pow(digit, numDigits);
        number /= 10;
    }

    // Check if the sum of digits raised to the power of numDigits is equal to the original number
    return (sum == originalNumber);
}

bool is_armstrong_number(int candidate) {

    // Check if the entered number is an Armstrong number
    if (isArmstrong(candidate)) {
        return true;
    } else {
        return false;
    }
}
