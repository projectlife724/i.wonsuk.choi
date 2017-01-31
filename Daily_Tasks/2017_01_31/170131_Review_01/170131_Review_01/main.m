//
//  main.m
//  170131_Review_01
//
//  Created by Won Suk Choi on 2017. 1. 31..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Developer.h"
#import "Calendar.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Person *me = [[Person alloc] init];
        me.name = @"최원석";
        me.age = 28;
        me.birthDay = @"1990.07.24";
        
        [me whenIsBirthDay:@""];
        Developer *developer = [[Developer alloc] initWithName:@"" age:30];
        
        Calendar *calendar = [[Calendar alloc] init];
        [calendar lastDayOfMonth:10];
    }
    return 0;
}
