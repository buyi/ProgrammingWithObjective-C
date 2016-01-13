//
//  XYZPerson.m
//  ProgrammingWithObjective-C
//
//  Created by buyi on 16/1/13.
//  Copyright © 2016年 buyi. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson

- (void) sayHello {
    NSLog(@"from XYZPerson");
}

- (void) sayHello:(NSString *)params {
     NSLog(@"%@",params);
}

- (void) sayHello:(NSString *)param1 two:(NSString *)param2 {
     NSLog(@"%@,,,,%@",param1,  param2);
}

+ (XYZPerson *) person {
    return [self new];
}
@end
