//
//  Doctor.m
//  
//
//  Created by Наталья Макалкина on 22.04.2024.
//

#import "Doctor.h"

@implementation Doctor

- (void) asktotakemedicine {
    NSLog (@" Doctor ask to take medicine");
    [self.delegate useMedicine]
}

@end

