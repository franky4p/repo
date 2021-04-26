//
//  main.m
//  Lesson2
//
//  Created by macbook on 26.04.2021.
//

#import <Foundation/Foundation.h>

BOOL itsEng(NSString* string) {
    NSString *engChar = @"abcdefghijklmnopqrstuvwxyz";
    return [engChar rangeOfString:string].length ? YES : NO;
}

int add(int a, int b) {
    return  a + b;
}

int sub(int a, int b) {
    return a - b;
}

int multiplication(int a, int b) {
    return a * b;
}

int division(int a, int b) {
    if (b == 0) {
        return 0;
    }
    return a / b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //task 1
        bool yep = itsEng(@"f");
        NSLog(@"%i", yep);
        
        //task 2
        int rezult = sub(8, 2);
        NSLog(@"%i", rezult);
    }
    return 0;
}

