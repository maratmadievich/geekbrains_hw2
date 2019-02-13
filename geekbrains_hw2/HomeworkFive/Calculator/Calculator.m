//
//  Calculator.m
//  geekbrains_hw2
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator



-(void) startCalculate {
    
    float firstValue;
    float secondValue;
    Operation operator;
    
    bool programComplete = true;
    do {
        printf("Первое число: ");
        scanf("%f", &firstValue);
        [self setFirst:firstValue];
        
        printf("Второе число: ");
        scanf("%f", &secondValue);
        [self setSecond:secondValue];
        
        printf("Действие \"+-/*\": ");
        scanf("%s", &operator);
        printf("\n");
        switch (operator) {
            case addition:
                calculateAddition(&first, &second);
                programComplete = true;
                break;
                
            case subtraction:
                calculateSubtraction(&first, &second);
                programComplete = true;
                break;
                
            case deletion:
                calculateDeletion(&first, &second);
                programComplete = true;
                break;
                
            case multiplication:
                calculateMultiplication(&first, &second);
                programComplete = true;
                break;
                
            default:
                programComplete = false;
                break;
        }
    } while (!programComplete);
}


- (NSNumber *)first {
    return self._first;
}
- (void)setFirst:(float)first {
    self._first = @(first);
}


- (NSNumber *)second {
    return self._first;
}
- (void)setSecond:(float)second {
    self._second = @(second);
}
//
//- (Operation)myOperator {
//    return self._myOperator;
//};
//- (void)setOperator:(Operation)myOperator {
//    self._myOperator = myOperator;
//};


@end
