//
//  HomeworkFour.m
//  geekbrains_hw2
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "HomeworkFour.h"
#import "Student.h"

@implementation HomeworkFour

-(void)showStudents {
    
    Student *studentAlex = [[Student alloc] init];
    
    Student *studentAlice = [[Student alloc] init];
    
    [studentAlex setName: @"Alex"];
    
    [studentAlex setSurname: @"Volkanovski"];
    
    [studentAlex additionAge: 21];
    
    [studentAlice setName: @"Alice"];
    
    [studentAlice setSurname: @"Cooper"];
    
    [studentAlice additionAge: 19];
    
    NSLog(@"%@", [studentAlex description]);
    
    NSLog(@"%@", [studentAlice description]);
    
}


@end

