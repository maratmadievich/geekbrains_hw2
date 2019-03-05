//
//  Calculator.m
//  geekbrains_hw2
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
    
        __first  = [[NSNumber alloc] init];
        
        __second  = [[NSNumber alloc] init];
        
        [__first retain];
        
        [__second retain];
    }
    
    return self;
}


- (float)first {
    
    return [__first floatValue];
}


- (void)setFirst:(float *)first {
   
    [self._first release];
    
    self._first = @(* first);
    
    [self._first retain];
}


- (float)second {
    
    return [__second floatValue];
}


- (void)setSecond:(float *)second {
   
    [self._second release];
    
    self._second = @(* second);
    
    [self._second retain];
}


- (void) calculateAddition {
   
    printf("%f + %f = %f \n\n", [self first], [self second], [self first] + [self second]);
}


- (void) calculateSubtraction {
    
    printf("%f - %f = %f \n\n", [self first], [self second], [self first] - [self second]);
}


- (void) calculateMultiplication {
    
    printf("%f * %f = %f \n\n", [self first], [self second], [self first] * [self second]);
}


- (void) calculateDeletion {
    
    if ([self second] != 0) {
    
        printf("%f / %f = %f \n\n", [self first], [self second], [self first] / [self second]);
    } else {
        
        printf("На 0 делить нельзя \n\n");
    }
    
}


-(void) startCalculate {
    
    float first;
   
    float second;
    
    Operation operator;
    
    bool programComplete = true;
    
    do {
    
        printf("Первое число: ");
        
        scanf("%f", &first);
        
        [self setFirst: &first];
        
        printf("Второе число: ");
        
        scanf("%f", &second);
        
        [self setSecond: &second];
        
        printf("Действие \"+-/*\": ");
        
        scanf("%s", &operator);
        
        printf("\n");
        
        switch (operator) {
           
            case addition:
            
                [self calculateAddition];
                
                programComplete = true;
                
                break;
                
            case subtraction:
                
                [self calculateSubtraction];
                
                programComplete = true;
                
                break;
                
            case deletion:
                
                [self calculateDeletion];
                
                programComplete = true;
                
                break;
                
            case multiplication:
                
                [self calculateMultiplication];
                
                programComplete = true;
                
                break;
                
            default:
                
                programComplete = false;
                
                break;
        }
        
    } while (!programComplete);
    
}


- (void)dealloc {
    
    [__first release];
    
    [__second release];
    
    [super dealloc];
}

@end
