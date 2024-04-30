//
//  Robot.m
//  
//
//  Created by Наталья Макалкина on 30.04.2024.
//

#import <Foundation/Foundation.h>

typedef void (^MovementBlock)(NSString *);

@interface Robot : NSObject

@property (nonatomic, assign) int x;
@property (nonatomic, assign) int y;

- (void)run:(MovementBlock)movementBlock;

@end

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        _x = 0;
        _y = 0;
    }
    return self;
}

- (void)run:(MovementBlock)movementBlock {
    if (movementBlock) {
        NSString *movement = movementBlock(@"");
        
        if ([movement isEqualToString:@"up"]) {
            _y++;
        } else if ([movement isEqualToString:@"down"]) {
            _y--;
        } else if ([movement isEqualToString:@"left"]) {
            _x--;
        } else if ([movement isEqualToString:@"right"]) {
            _x++;
        }
    }
    NSLog(@"Current position: x = %d, y = %d", _x, _y);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc] init];
        
        MovementBlock movementBlock = ^NSString *(NSString *direction) {
            // Здесь можно возвращать направление (up, down, left, right) в зависимости от условий
            return @"up";
        };
        
        [robot run:movementBlock];
    }
    return 0;
}

