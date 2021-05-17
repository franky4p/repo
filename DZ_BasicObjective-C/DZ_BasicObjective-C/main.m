//
//  main.m
//  DZ_BasicObjective-C
//
//  Created by macbook on 17.05.2021.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *student = [[Student alloc] init];
        NSLog(@"%@", student);
        
        Student *studentVasya = [[Student alloc] initWithParametrs:@"Vasya" andSurName:@"Pypkin"];
        [studentVasya addYear];
        NSLog(@"%@", studentVasya);
    }
    return 0;
}
