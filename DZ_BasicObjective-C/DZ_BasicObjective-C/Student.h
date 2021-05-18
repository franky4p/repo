//
//  Student.h
//  DZ_BasicObjective-C
//
//  Created by macbook on 17.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

- (instancetype)initWithParametrs:(NSString *)name andSurName: (NSString *)surName;
- (void)addYear;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surName;
@property (nonatomic, strong) NSString *fullName;

@property (nonatomic, readonly) NSInteger age;

@end

NS_ASSUME_NONNULL_END
