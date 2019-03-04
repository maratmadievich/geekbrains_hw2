//
//  HomeworkTwo.m
//  geekbrains_hw2
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "HomeworkTwo.h"

@implementation HomeworkTwo

-(void)selectTask {
    
    int value = -1;
    
    do {
    
        printf("Выберите задание:\n1) Арифметические операции;\n2) Входит ли буква в английский алфавит;\n0) выход.\n");
        
        scanf("%d", &value);
        
        printf("\n\n");
        
        switch (value) {
        
            case 0:
            
                break;
                
            case 1:
                
                [self taskOne];
                
                break;
                
            case 2:
                
                [self taskTwo];
                
                break;
                
            default:
                
                printf("Выберите другое значение\n");
                
                break;
        }
        
    } while (value != 0);
    
}


-(void) taskOne {
    
    float first = 0;
    
    float second = 0;
    
    char operation[1];
    
    bool programComplete = true;
    
    do {
    
        printf("Первое число: ");
        
        scanf("%f", &first);
        
        printf("Второе число: ");
        
        scanf("%f", &second);
        
        printf("Действие \"+-/*\": ");
        
        scanf("%s", operation);
        
        printf("\n");
        
        switch (operation[0]) {
        
            case '+':
            
                calculateAddition(&first, &second);
                
                programComplete = true;
                
                break;
                
            case '-':
                
                calculateSubtraction(&first, &second);
                
                programComplete = true;
                
                break;
                
            case '/':
                
                calculateDeletion(&first, &second);
                
                programComplete = true;
                
                break;
                
            case '*':
                
                calculateMultiplication(&first, &second);
                
                programComplete = true;
                
                break;
                
            default:
                
                programComplete = false;
                
                break;
        }
        
    } while (!programComplete);
    
}


void calculateAddition(float * first, float * second) {
    
    printf("%f + %f = %f \n\n", *first, *second, *first + *second);
}


void calculateSubtraction(float * first, float * second) {
    
    printf("%f - %f = %f \n\n", *first, *second, *first - *second);
}


void calculateMultiplication(float * first, float * second) {
   
    printf("%f * %f = %f \n\n", *first, *second, *first * *second);
}


void calculateDeletion(float * first, float * second) {
   
    if (*second != 0) {
    
        printf("%f / %f = %f \n\n", *first, *second, *first / *second);
    } else {
        
        printf("На 0 делить нельзя \n\n");
    }
    
}


-(void) taskTwo {
   
    char value[1];
    
    printf("Введите букву: ");
    
    scanf("%s", value);
    
    printf(((value[0] >= 'a') && (value[0] <= 'z')) || ((value[0] >= 'A') && (value[0] <= 'Z')) ? "Символ %c принадлежит английскому алфавиту" : "Символ %c НЕ принадлежит английскому алфавиту", value[0]);
    
    printf("\n\n");
}


@end
