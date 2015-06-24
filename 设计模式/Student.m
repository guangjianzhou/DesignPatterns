//
//  Student.m
//  设计模式
//
//  Created by zhougj on 15/6/23.
//  Copyright (c) 2015年 iiseeuu. All rights reserved.
//

#import "Student.h"
#import "CurrentDelegate.h"

@interface Student ()<CurrentDelegate>

@end

@implementation Student

- (Student *)createStudentWithNumber:(NSNumber *)number
{
    Student *student;
    switch (number.integerValue) {
        case 0:
        {
            
        }
            break;
        case 1:
        {
            
        }
            break;
        default:
            break;
    }
    return student;
}


- (void)sayHello
{
    NSLog(@"girl say Hello");
}

@end
