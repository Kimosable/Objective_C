
//  Doctor.h
//
//  Created by Наталья Макалкина on 22.04.2024.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, weak, nullable) id<DoctorDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
