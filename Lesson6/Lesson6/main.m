//
//  main.m
//  Lesson6
//
//  Created by macbook on 19.05.2021.
//

#import <Foundation/Foundation.h>
#import "TestBlock.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [TestBlock callVoidBlock];
        
        NSInteger rezult = [TestBlock finalCoundown];
        while (rezult>0) {
            rezult = [TestBlock finalCoundown];
            NSLog(@"%ld", (long)rezult);
        } ;
        
        NSString *test = [TestBlock intToString:5];
        NSLog(@"%@", test);
        
        NSUInteger lengh = [TestBlock stringLen:@"Hello World"];
        NSLog(@"%lu", (unsigned long)lengh);
        
        NSString *helloU = [TestBlock greetings:ActionHello user:@"Vasya"];
        NSString *byeU = [TestBlock greetings:ActionBye user:@"Vasya"];
        
        NSLog(@"%@ -> %@", helloU, byeU);
        
        //MARK: - 2 Добавить выполнение блоков в различные очереди
        NSLog(@"Добавление блоков в очереди");
        
        
        dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        dispatch_sync(globalQueue, ^{NSLog(@"Hello, dispatch queue!");});
        
        __block NSInteger a = 6;
        dispatch_group_t group = dispatch_group_create();
        dispatch_queue_t user_interactive = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0);
        dispatch_queue_t user_utility = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
        dispatch_group_async(group, user_utility, ^{ a = a + 4; });
        dispatch_group_async(group, user_interactive, ^{ a = a / 2; });

        //почему-то ничего не выводит, если это последняя операция, когда добавил
        //NSOperationQueue появился результат, но нет вывода Hello NSOperationQueue
        dispatch_group_notify(group, user_interactive, ^{
            NSLog(@"%ld", (long)a);
        });
        
        NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
        [mainQueue addOperationWithBlock: ^{ NSLog(@"Hello NSOperationQueue"); }];
    }
    return 0;
}
