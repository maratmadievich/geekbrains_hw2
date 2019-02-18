//
//  HomeworkFive.m
//  geekbrains_hw2
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "HomeworkFive.h"
#import "Calculator.h"
#import "Flock.h"
#import "Bird.h"
#import "Wing.h"
//#import ""

@implementation HomeworkFive

-(void)selectTask {
    
    @autoreleasepool {
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
                    
                case 2:
                    [self taskTwo];
                    break;
                    
                default:
                    printf("Выберите другое значение\n");
                    break;
            }
        } while (value != 0);
    }
}


-(void) taskOne {
    Calculator *calculator = [[Calculator alloc] init];
    [calculator startCalculate];
}

-(void) taskTwo {
    Flock *flock = [[Flock alloc] init];
    
    Wing *eagleWing = [[Wing alloc] initWithCount: @2 andReach: @2.8];
    Bird *eagle = [[Bird alloc] initWithBreed: @"Орёл" andWing: eagleWing];
    
    Wing *sparrowWing = [[Wing alloc] initWithCount: @2 andReach: @0.3];
    Bird *sparrow = [[Bird alloc] initWithBreed: @"Воробей" andWing: sparrowWing];
    
    
    NSArray *birds = [[NSArray alloc] initWithObjects: eagle, sparrow, nil];
    [flock configure: birds];
    
    // Освобождение автомобиля и удаление компонентов
    [flock release];
}

@end
