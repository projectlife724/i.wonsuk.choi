//
//  UniversityStudent.h
//  0119_GameInheritance
//
//  Created by Won Suk Choi on 2017. 1. 19..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface UniversityStudent : Student

@property NSString* major;

- (void)goMT: (UniversityStudent*)uStudent;



@end
