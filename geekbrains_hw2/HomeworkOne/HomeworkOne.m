//
//  HomeworkOne.m
//  geekbrains_hw2
//
//  Created by Admin on 2/12/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "HomeworkOne.h"

@implementation HomeworkOne

-(void)selectTask {
    
    int value = -1;
    
    do {
    
        printf("Выберите задание:\n1) Арифметические операции;\n2) Среднее число;\n0) выход.\n\n");
        
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
    
    float result = 0;
    
    char operation[1];
    
    bool programComplete = false;
    
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
            
                result = first + second;
                
                programComplete = true;
                
                break;
                
            case '-':
                
                result = first - second;
                
                programComplete = true;
                
                break;
                
            case '/':
                
                if (second != 0) {
                
                    result = first / second;
                    
                    programComplete = true;
                } else {
                    
                    printf("На 0 делить нельзя \n\n");
                }
                
                break;
                
            case '*':
               
                result = first * second;
                
                programComplete = true;
                
                break;
                
            default:
               
                programComplete = false;
                
                break;
        }
        
    } while (!programComplete);
    
    printf("%f %c %f = %f \n\n", first, operation[0], second, result);
}


-(void) taskTwo {
    
    int first = 0;
    
    int second = 0;
    
    int third = 0;
    
    printf("Первое число: ");
    
    scanf("%d", &first);
    
    printf("Второе число: ");
    
    scanf("%d", &second);
    
    printf("Третье число: ");
    
    scanf("%d", &third);
    
    printf("\n");
    
    if (first == second || third == second || first == third) {
        
        printf("Значения должны быть уникальными\n\n");
        
        return;
    } else if ((first > second && first < third) || (first > third && first < second)) {
        
        printf("Среднее значение: %d \n\n", first);
    } else if ((second > first && second < third) || (second > third && second < first)) {
        
        printf("Среднее значение: %d \n\n", second);
    } else {
        
        printf("Среднее значение: %d \n\n", third);
    }
    
}

@end
