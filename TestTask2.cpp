#include <iostream>
#include <math.h>

// Решение задания по формуле Бине
int fibonacciNumbersBinet(const int n)
{
    const double first = (1 + sqrt(5)) / 2;
    const double second = (1 - sqrt(5)) / 2;

    return (pow(first, n) - pow(second, n)) / sqrt(5);
}

// Решение рекурсивным способом
int fibonacciRecursive(const int n)
{
    if (n <= 1)
        return n;

    return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
}

// Решение итеративным способом
int fibonacciIterative(const int n)
{
    if (n <= 1)
        return n;

    int first = 1;
    int second = 1;
    for(int i=2; i<n; i++) 
    {
        int temp = first;
        first += second;
        second = temp;
    }
    return first;
}

int main()
{
    std::cout << "Binet: " << fibonacciNumbersBinet(20) << std::endl;
    std::cout << "Recursive" << fibonacciRecursive(20) << std::endl; 
    std::cout << "Iterative" << fibonacciIterative(20) << std::endl;
}