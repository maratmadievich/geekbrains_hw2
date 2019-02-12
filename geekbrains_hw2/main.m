//
//  main.m
//  geekbrains_hw2
//
//  Created by Admin on 2/12/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeworkOne.h"

//int selectHomework() {
//    int value = -1;
//    printf("Выберите Домашнее задание:\n");
//    printf("1-4 ДЗ;\n");
//    printf("0 Выход.\n");
//    scanf("%d", &value);
//    printf("\n\n");
//    return value;
//}



int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
//        int selectedHomework = -1;
        
        HomeworkOne *homeworkOne = [[HomeworkOne alloc]init];
        
        [homeworkOne selectTask];
        
    }
    return 0;
}
