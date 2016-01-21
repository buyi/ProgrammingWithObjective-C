//
//  main.m
//  ProgrammingWithObjective-C
//
//  Created by buyi on 16/1/13.
//  Copyright © 2016年 buyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        XYZPerson* person = [XYZPerson new];
        if (person) {
            NSLog(@"person%@ is not null", person);
        } else {
            NSLog(@"person is null");
        }
        // section3.4 Try creating XYZPerson objects using a variety of strong and weak variables in the main() function. Verify that the strong variables keep the XYZPerson objects alive at least as long as you expect.
          XYZPerson * __weak someObject = [[XYZPerson alloc] init];
        if (someObject) {
            NSLog(@"someObject is not null");
        } else {
             NSLog(@"someObject is null");
        }
//        XYZPerson* person = [XYZShoutingPerson new];
//         XYZPerson* person = [XYZPerson person];
//        XYZPerson* person =  [[XYZPerson alloc] initWithFirstName:@"initWith bu" lastName:@"initWith yi" birth:[NSDate new]];
        if (person) {
            NSLog(@"person's firstname is %@", person.firstName);
             NSLog(@"person's  lastname is %@", person.lastName);
            NSLog(@"person's date is %@", person.birthDay);
        }
        
        // 放在外部调用的 copy写法。主要保证_firstName属性强引用副本。
        // section3.3 Test what happens if you set a mutable string as the person’s first name, then mutate that string before calling your modified sayHello method. Change the NSString property declarations by adding the copy attribute and test again.
//        NSMutableString *nameString = [NSMutableString stringWithString:@"John"];
//        person.firstName = nameString;
//        [nameString appendString:@"hehe"];
        
        [person sayHello];
        [person sayHello:@"haha"];
        [person sayHello:@"hello" two:@"world"];
        
        [person doAnotherThing];
        
        [@"i am a student" XYZupper:@"i am a student"];
//        [@"aaa" dr]
        
//        NSView
        
        
        double (^multiplyTwoValues)(double, double) =
        ^(double firstValue, double secondValue) {
            return firstValue * secondValue;
        };
        
        double result = multiplyTwoValues(2,4);
        
        NSLog(@"The result is %f", result);

    }
    return 0;
}
