//
//  main.m
//  ProgrammingWithObjective-C
//
//  Created by buyi on 16/1/13.
//  Copyright © 2016年 buyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        XYZPerson* person = [XYZPerson new];
        [person sayHello];
        [person sayHello:@"haha"];
         [person sayHello:@"hello" two:@"world"];
    }
    return 0;
}
