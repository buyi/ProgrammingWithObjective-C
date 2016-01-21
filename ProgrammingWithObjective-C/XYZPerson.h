//
//  XYZPerson.h
//  ProgrammingWithObjective-C
//
//  Created by buyi on 16/1/13.
//  Copyright © 2016年 buyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

//copy 是持有设置到这个属性值的拷贝
@property (copy) NSString* firstName;
@property NSString* lastName;
@property NSDate* birthDay;

@property (readonly) NSString* height;
@property (readonly) NSString* weight;

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *) lastName birth:(NSDate*) date;

- (void)sayHello;

//class methods are denoted by the use of a + sign, which differentiates them from instance methods using a - sign.

//Class method prototypes may be included in a class interface, just like instance method prototypes. Class methods are implemented in the same way as instance methods, inside the @implementation block for the class.


- (void)sayHello: (NSString*) params;


- (void)sayHello: (NSString*) param1 two:(NSString*) param2;

+ (XYZPerson*) person;


- (void) measureHeight;
- (void) measureWeight;

@end


//section4.1 Add a category to the XYZPerson class to declare and implement additional behavior, such as displaying a person’s name in different ways.
@interface XYZPerson (something)
- (void) doAnotherThing;

@end


@interface NSString (XYZupper)
- (void) XYZupper:(NSString*) data;
@end
