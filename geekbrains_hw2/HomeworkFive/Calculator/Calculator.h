//
//  Calculator.h
//  geekbrains_hw2
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

typedef NS_ENUM(char, Operation) {
    addition = '+',
    subtraction = '-',
    multiplication = '*',
    deletion = '/'
};

-(void)startCalculate;

@property (atomic) Operation _myOperator;

@property (atomic) NSNumber* _first;
@property (atomic) NSNumber* _second;

- (float)first;
- (void)setFirst:(float *)first;

- (float)second;
- (void)setSecond:(float *)second;


@end
