//
//  main.m
//  Lesson2
//
//  Created by macbook on 26.04.2021.
//

#import <Foundation/Foundation.h>

//MARK: - Task 2

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

//MARK: - Task 3

void loop() {
    NSArray *myArray = @[@1, @2, @3, @4, @5];
    
    for (int i = 0; i < 4; i++) {
        NSLog(@"%@", myArray[i]);
    }
    
    NSLog(@"While");
    
    int i = 0;
    while (i < myArray.count) {
        NSLog(@"%@", myArray[i]);
        i+=1;
    }
    
    NSLog(@"Do While");
    
    i = 0;
    do {
        NSLog(@"%@", myArray[i]);
        i += 1;
    } while (i < myArray.count);
}


enum Operation {
    OperationAdd,
    OperationSub,
    OperationMultiplication,
    OperationDivision
};

typedef enum Operation Operation;

int calculate(Operation operation, int a, int b) {
    int rezult = 0;
    
    switch (operation) {
        case OperationAdd:
            rezult = add(a, b);
            break;
        case OperationSub:
            rezult = sub(a, b);
            break;
        case OperationMultiplication:
            rezult = multiplication(a, b);
            break;
        case OperationDivision:
            rezult = division(a, b);
            break;
        default:
            break;
    }
    
    return rezult;
}

enum Gander {
    GanderM,
    GanderF
};

struct Human {
    NSInteger age;
    NSString *name;
    enum Gander gander;
};

typedef struct Human Human;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //task 1
        bool yep = itsEng(@"f");
        NSLog(@"%i", yep);
        
        //task 2
        int rezult = sub(8, 2);
        NSLog(@"%i", rezult);
        
        //DZ3
        NSLog(@"----DZ3----");
        
        loop();
        
        int rezult1 = calculate(OperationSub, 8, 2);
        NSLog(@"%i", rezult1);
        
        Human human1;
        human1.age = 20;
        human1.name = @"Jon";
        human1.gander = GanderM;
        
        Human human2;
        human2.age = 21;
        human2.name = @"Jane";
        human2.gander = GanderF;
        
        NSLog(@"Human1: \n name %@, \n gander %u, \n age %ld, \n", human1.name, human1.gander, (long)human1.age);

        NSLog(@"Human2: \n name %@, \n gander %u, \n age %ld, \n", human2.name, human2.gander, (long)human2.age);
    }
    return 0;
}

