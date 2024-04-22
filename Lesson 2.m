//
//  Lesson 2.m
//  Lesson_1
//
//  Created by Наталья Макалкина on 22.04.2024.
//

#import <Foundation/Foundation.h>

// Абстрактный класс "Figure"
@interface Figure : NSObject

- (double)calculateArea; // Метод вычисления площади
- (double)calculatePerimeter; // Метод вычисления периметра
- (void)printInfo; // Метод вывода информации о фигуре

@end

@implementation Figure

- (double)calculateArea {
    return 0; // Реализация будет в подклассах
}

- (double)calculatePerimeter {
    return 0; // Реализация будет в подклассах
}

- (void)printInfo {
    // Печать информации о фигуре
}

@end

// Класс "Rectangle" (Прямоугольник)
@interface Rectangle : Figure

@property(nonatomic) double width;
@property(nonatomic) double height;

@end

@implementation Rectangle

- (double)calculateArea {
    return self.width * self.height;
}

- (double)calculatePerimeter {
    return 2 * (self.width + self.height);
}

- (void)printInfo {
    NSLog(@"Rectangle - Width: %.2f, Height: %.2f, Area: %.2f, Perimeter: %.2f", self.width, self.height, [self calculateArea], [self calculatePerimeter]);
}

@end

// Класс "Circle" (Круг)
@interface Circle : Figure

@property(nonatomic) double radius;

@end

@implementation Circle

- (double)calculateArea {
    return M_PI * self.radius * self.radius;
}

- (double)calculatePerimeter {
    return 2 * M_PI * self.radius;
}

- (void)printInfo {
    NSLog(@"Circle - Radius: %.2f, Area: %.2f, Perimeter: %.2f", self.radius, [self calculateArea], [self calculatePerimeter]);
}

@end

// Класс "Triangle" (Треугольник)
@interface Triangle : Figure

@property(nonatomic) double sideA;
@property(nonatomic) double sideB;
@property(nonatomic) double sideC;

@end

@implementation Triangle

- (double)calculateArea {
    double p = [self calculatePerimeter] / 2;
    return sqrt(p * (p - self.sideA) * (p - self.sideB) * (p - self.sideC));
}

- (double)calculatePerimeter {
    return self.sideA + self.sideB + self.sideC;
}

- (void)printInfo {
    NSLog(@"Triangle - Sides: %.2f, %.2f, %.2f, Area: %.2f, Perimeter: %.2f", self.sideA, self.sideB, self.sideC, [self calculateArea], [self calculatePerimeter]);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Создание массива и заполнение фигурами
        NSArray<Figure *> *figures = @[
            [[Rectangle alloc] init],
            [[Circle alloc] init],
            [[Triangle alloc] init]
        ];
        
        // Установка данных для фигур
        Rectangle *rectangle = (Rectangle *)figures[0];
        rectangle.width = 5;
        rectangle.height = 3;
        
        Circle *circle = (Circle *)figures[1];
        circle.radius = 4;
        
        Triangle *triangle = (Triangle *)figures[2];
        triangle.sideA = 3;
        triangle.sideB = 4;
        triangle.sideC = 5;
        
        // Вывод информации о фигурах
        for (Figure *figure in figures) {
            [figure printInfo];
        }
    }
    return 0;
}

