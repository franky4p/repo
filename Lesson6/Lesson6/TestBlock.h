//
//  TestBlock.h
//  Lesson6
//
//  Created by macbook on 19.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^EmptyBlock)(void);
typedef NSString* _Nonnull (^IntToStringBlock) (NSInteger value);
typedef NSUInteger (^StringLen) (NSString* value);
typedef NSString* _Nonnull (^Greetings) (NSString* user);

typedef enum Action {
    ActionHello,
    ActionBye
} Action;

@interface TestBlock : NSObject

+ (void)callVoidBlock;
+ (NSInteger)finalCoundown;
+ (NSString*)intToString: (NSInteger)value;
+ (NSUInteger)stringLen: (NSString*)value;
+ (NSString*)greetings: (Action)action user: (NSString*)user;

@end

NS_ASSUME_NONNULL_END
