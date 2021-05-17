//
//  Student.m
//  DZ_BasicObjective-C
//
//  Created by macbook on 17.05.2021.
//

#import "Student.h"

@implementation Student
@synthesize age = _age;

- (instancetype) init {
    self = [super init];
    if (self) {
        self.name = @"Jon";
        self.surName = @"Gold";
        self.fullName = [NSString stringWithFormat:@"%@ %@", self.name, self.surName];
    }
    return  self;
}

- (instancetype) initWithParametrs:(NSString *)name andSurName:(NSString *)surName {
    self = [super init];
    if (self) {
        self.name = name;
        self.surName = surName;
        self.fullName = [NSString stringWithFormat:@"%@ %@", self.name, self.surName];
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"name: %@ surname: %@ fullname: %@ age: %ld", self.name, self.surName, self.fullName, (long)self.age];
}

- (void)addYear {
    _age++;
}

@end
