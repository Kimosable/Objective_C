//
//  Lesson_3.m
//  
//
//  Created by Наталья Макалкина on 22.04.2024.
//
//Написать классы Doctor (Доктор) и Patient (Пациент). Доктор делегирует
//пациенту выпить пилюлю. Пациент по указанию доктора ее выпивает. Требуется
//реализовать взаимодействие доктора и пациента через делегат.


#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [Doctor new];
        Patient *patient = [Patient new];
        doctor.deligate = patient;
        [doctor asktotakemedicine];
    }
    return 0;
}
