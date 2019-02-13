//
//  HomeworkFive.m
//  geekbrains_hw2
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "HomeworkFive.h"

@implementation HomeworkFive


    
-(void)selectTask {
    
    NSAutoreleasePool *pool;

    int value = -1;
    do {
        printf("Выберите задание:\n1) Калькулятор;\n2) Стая птиц; \n0) выход.\n");
        scanf("%d", &value);
        printf("\n\n");
        switch (value) {
            case 0:
                break;
                
            case 1:
                [self taskOne];
                break;
                
//            case 2:
//                [self taskTwo];
                break;
                
            default:
                printf("Выберите другое значение\n");
                break;
        }
    } while (value != 0);
}


-(void) taskOne {
    char operation[1];
    
    bool programComplete = true;
    do {
        printf("Первое число: ");
        scanf("%f", first);
        printf("Второе число: ");
        scanf("%f", second);
        printf("Действие \"+-/*\": ");
        scanf("%s", operation);
        printf("\n");
        switch (operation[0]) {
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

//-(void) taskTwo {
//    
//    float first = 0;
//    float second = 0;
//    char operation[1];
//    
//    bool programComplete = true;
//    do {
//        printf("Первое число: ");
//        scanf("%f", &first);
//        printf("Второе число: ");
//        scanf("%f", &second);
//        printf("Действие \"+-/*\": ");
//        scanf("%s", operation);
//        printf("\n");
//        switch (operation[0]) {
//            case addition:
//                calculateAddition(&first, &second);
//                programComplete = true;
//                break;
//                
//            case subtraction:
//                calculateSubtraction(&first, &second);
//                programComplete = true;
//                break;
//                
//            case deletion:
//                calculateDeletion(&first, &second);
//                programComplete = true;
//                break;
//                
//            case multiplication:
//                calculateMultiplication(&first, &second);
//                programComplete = true;
//                break;
//                
//            default:
//                programComplete = false;
//                break;
//        }
//    } while (!programComplete);
//}

@end
