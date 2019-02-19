//
//  main.m
//  geekbrains_hw2
//
//  Created by Admin on 2/12/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeworkOne.h"
#import "HomeworkTwo.h"
#import "HomeworkThree.h"
#import "HomeworkFour.h"
#import "HomeworkFive.h"

int selectHomework() {
    int value = -1;
    printf("Выберите Домашнее задание:\n");
    printf("1-5 ДЗ;\n");
    printf("0 Выход.\n");
    scanf("%d", &value);
    printf("\n\n");
    return value;
}



int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        int selectedHomework = -1;
        
        HomeworkOne *homeworkOne = [[HomeworkOne alloc]init];
        HomeworkTwo *homeworkTwo = [[HomeworkTwo alloc]init];
        HomeworkThree *homeworkThree = [[HomeworkThree alloc]init];
        HomeworkFour *homeworkFour = [[HomeworkFour alloc]init];
        HomeworkFive *homeworkFive = [[HomeworkFive alloc]init];
        
        do {
            selectedHomework = selectHomework();
            switch (selectedHomework) {
                case 0: //Выход
                    break;
                    
                case 1:
                    [homeworkOne selectTask];
                    break;
                    
                case 2:
                    [homeworkTwo selectTask];
                    break;
                    
                case 3:
                    [homeworkThree selectTask];
                    break;
                    
                case 4:
                    [homeworkFour showStudents];
                    break;
                    
                case 5:
                    [homeworkFive selectTask];
                    break;
                    
                default:
                    break;
            }
        } while (selectedHomework != 0);
    }
    return 0;
}
