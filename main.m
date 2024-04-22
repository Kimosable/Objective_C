//
//  main.m
//  Lesson_1
//
//  Created by Наталья Макалкина on 17.04.2024.
//
// Задание первое, выбираем и объявляем переменную, которая будет хранить значение,
// квадрат числа которого будет вычисляться.
#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        int number = 5;
//        int number2 = 6;
//        int number3 = 8;
//        NSLog(@"number - %i, number2 - %i, number3 - %i", number, number2, number3);
//    }
//
//}

//Задание
//Решить квадратные уравнения:
//x^2 – 8x + 12 = 0,
//12x^2 – 4x + 2 = 0,
//x^2 – 100x - 2 = 0
//(заменять константы в коде).
//Создать программу, которая находит большее число среди 3-х чисел.
//

void solveQuadraticEquation(double a, double b, double c) {
    double discriminant = b*b - 4*a*c;
    if (discriminant > 0) {
        double x1 = (-b + sqrt(discriminant)) / (2*a);
        double x2 = (-b - sqrt(discriminant)) / (2*a);
        NSLog(@"Уравнение имеет два корня: x1 = %f, x2 = %f", x1, x2);
    } else if (discriminant == 0) {
        double x = -b / (2*a);
        NSLog(@"Уравнение имеет один корень: x = %f", x);
    } else {
        NSLog(@"Уравнение не имеет действительных корней");
    }
}

int findMaxOfThreeNumbers(int a, int b, int c) {
    int max = (a > b) ? a : b;
    max = (max > c) ? max : c;
    
    return max;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        solveQuadraticEquation(1, -8, 12);
        solveQuadraticEquation(12, -4, 2);
        solveQuadraticEquation(1, -100, -2);
        
        int num1 = 10;
        int num2 = 25;
        int num3 = 17;
        int maxNum = findMaxOfThreeNumbers(num1, num2, num3);
        NSLog(@"Наибольшее число из %d, %d, %d - %d", num1, num2, num3, maxNum);
    }
    return 0;
}
