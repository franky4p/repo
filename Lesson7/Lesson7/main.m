//
//  main.m
//  Lesson7
//
//  Created by macbook on 25.05.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
        path = [path stringByAppendingString:@"/testPlist.plist"];
        
        NSLog(@"Введите свойства через пробел: ");
        NSFileHandle *input = [NSFileHandle fileHandleWithStandardInput];
        NSData *inputData = [NSData dataWithData:[input availableData]];
        NSString *inputString = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
        NSArray *listItems = [inputString componentsSeparatedByString:@" "];
        
        [listItems writeToFile:path atomically:YES];
    }
    return 0;
}
