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
@property (atomic, weak) NSNumber* _first;
@property (atomic, weak) NSNumber* _second;
//
//
- (NSNumber *)first;
- (void)setFirst:(float)first;

- (NSNumber *)second;
- (void)setSecond:(float)second;
//
//- (Operation)myOperator;
//- (void)setOperator:(Operation)myOperator;

@end
