//
//  XYZPerson.h
//  ProgrammingWithObjective-C
//
//  Created by buyi on 16/1/13.
//  Copyright © 2016年 buyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

@property NSString* firstName;
@property NSString* lastName;
@property NSDate* birthDay;

- (void)sayHello;

//class methods are denoted by the use of a + sign, which differentiates them from instance methods using a - sign.

//Class method prototypes may be included in a class interface, just like instance method prototypes. Class methods are implemented in the same way as instance methods, inside the @implementation block for the class.


- (void)sayHello: (NSString*) params;


- (void)sayHello: (NSString*) param1 two:(NSString*) param2;

+ (XYZPerson*) person;

@end
