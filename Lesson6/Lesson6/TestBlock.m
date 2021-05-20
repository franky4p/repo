//
//  TestBlock.m
//  Lesson6
//
//  Created by macbook on 19.05.2021.
//

#import "TestBlock.h"

@implementation TestBlock

EmptyBlock hello = ^() {
    NSLog(@"Hello, World!");
};

IntToStringBlock test = ^(NSInteger value) {
    return [NSString stringWithFormat:@"value: %ld", (long)value];
};

StringLen strLen = ^(NSString* value) {
    return [value length];
};

Greetings helloUser = ^(NSString* user) {
    return [NSString stringWithFormat:@"Hello %@", user];
};

Greetings byeUser = ^(NSString* user) {
    return [NSString stringWithFormat:@"Bye %@", user];
};

NSInteger start = 10;
NSInteger (^countdown)(void) = ^(void) {
    return start--;
};


+ (void)callVoidBlock {
    hello();
};

+(NSInteger)finalCoundown {
    return countdown();
};

+(NSString*)intToString:(NSInteger) value {
    return test(value);
}

+(NSUInteger)stringLen:(NSString *)value {
    return strLen(value);
}

+(NSString*)greetings:(Action)action user:(NSString *)user {
    switch (action) {
        case ActionHello:
            return helloUser(user);
            break;
        case ActionBye:
            return byeUser(user);
            break;
        default:
            break;
    }
}

@end
