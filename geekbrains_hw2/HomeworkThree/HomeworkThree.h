//
//  HomeworkThree.h
//  geekbrains_hw2
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(bool, Gender) {
    male = true,
    female = false
};

enum Operation {
    addition = '+',
    subtraction = '-',
    multiplication = '*',
    deletion = '/'
};

struct Human {
    NSString *name;
    NSInteger age;
    Gender gender;
};


@interface HomeworkThree : NSObject {
    
}

-(void)selectTask;

@end
