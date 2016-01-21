//
//  XYZShoutingPerson.m
//  ProgrammingWithObjective-C
//
//  Created by buyi on 16/1/13.
//  Copyright © 2016年 buyi. All rights reserved.
//

#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson
- (void) sayHello {
    NSLog(@"%@", @"from XYZShoutingPerson");
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.firstName = @"XYZShoutingPerson.h init bu";
        self.lastName = @"XYZShoutingPerson.h init yi";
        self.birthDay = [NSDate new];
    }
    return self;
}

@end
