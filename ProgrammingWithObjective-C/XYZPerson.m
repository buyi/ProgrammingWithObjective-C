//
//  XYZPerson.m
//  ProgrammingWithObjective-C
//
//  Created by buyi on 16/1/13.
//  Copyright © 2016年 buyi. All rights reserved.
//

#import "XYZPerson.h"

@interface XYZPerson ()

@property NSString* height;
@property NSString* weight;
@end

@implementation XYZPerson
@synthesize firstName = _firstName;

//#section3.1 Modify the sayHello method from the XYZPerson class to log a greeting using the person’s first name and last name.
- (void) sayHello {
    NSLog(@"from XYZPerson's firstName is %@, lastName is %@, date is %@", self.firstName, self.lastName, self.birthDay);
}

- (void) sayHello:(NSString *)params {
     NSLog(@"%@",params);
}

- (void) sayHello:(NSString *)param1 two:(NSString *)param2 {
     NSLog(@"%@,,,,%@",param1,  param2);
}

// #section3.2 Declare and implement a new designated initializer used to create an XYZPerson using a specified first name, last name and date of birth, along with a suitable class factory method.
//Don’t forget to override init to call the designated initializer.
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.firstName = @"XYZPerson.h init bu";
        self.lastName = @"XYZPerson.h init yi";
        self.birthDay = [NSDate new];
    }
    return self;
}

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *) lastName birth:(NSDate*) date
{
    self = [super init];
    if (self) {
        [self setFirstName:firstName];
        [self setLastName:lastName];
        [self setBirthDay:date];
    }
    return self;
}

- (NSString *) firstName {
    return _firstName;
}

// 放在访问器方法里的 copy写法。主要保证_firstName属性强引用副本。
- (void) setFirstName:(NSString *)firstName {
    NSMutableString *nameString = [NSMutableString stringWithString:@"John"];
    _firstName = [nameString copy];
    [nameString appendString:@"hehe"];
}

+ (XYZPerson *) person {
    XYZPerson* person = [self new];
    person.firstName = @"bu";
    person.lastName = @"yi";
    person.birthDay = [NSDate new];
    return person;
}

// 析构方法
// section3.5 In order to help verify when an XYZPerson object is deallocated, you might want to tie into the object lifecycle by providing a dealloc method in the XYZPerson implementation. This method is called automatically when an Objective-C object is deallocated from memory, and is normally used to release any memory you allocated manually, such as through the C malloc() function
- (void)dealloc {
    NSLog(@"XYZPerson is being deallocated");
}

// section3.6 Modify the XYZPerson class description so that you can keep track of a spouse or partner.
- (NSString*) description {
    return @"this is customer description";
}

- (void) measureHeight {
    self.height = @"100";
}

@end

@implementation XYZPerson (something)

- (void) doAnotherThing {
    NSLog(@"doAnotherThing");
}

@end

@implementation NSString (XYZupper)
- (void) XYZupper:(NSString *)data {
    NSLog(@"upper is %@", [data uppercaseString]);
}
@end
