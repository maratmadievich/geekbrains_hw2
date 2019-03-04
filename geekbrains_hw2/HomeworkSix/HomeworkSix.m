//
//  HomeworkSix.m
//  geekbrains_hw2
//
//  Created by Admin on 3/4/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "HomeworkSix.h"

@implementation HomeworkSix

void (^square)(int) = ^(int number) {
    
    NSLog(@"%i в квадрате = %i", number, number * number);
};


void (^addition)(int,int) = ^(int first, int second) {
    
    NSLog(@"%i + %i = %i", first, second, first + second);
};


void (^substraction)(int,int) = ^(int first, int second) {
    
    NSLog(@"%i - %i = %i", first, second, first - second);
};


void (^multiplication)(int,int) = ^(int first, int second) {
    
   NSLog(@"%i * %i = %i", first, second, first * second);
};


void (^deletion)(int,int) = ^(int first, int second) {
    
    NSLog(@"%i / %i = %i", first, second, first / second);
};


-(void)selectTask {
    
    @autoreleasepool {
       
        int value = -1;
        
        do {
        
            printf("\nВыберите задание:\n1) Блоки;\n2) Многопоточность; \n0) выход.\n");
            
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
    
    @autoreleasepool {
        
        int first = 100;
        
        int second = 5;
        
        addition(first, second);
        
        substraction(first, second);
        
        multiplication(first, second);
        
        deletion(first, second);
        
        square(first);
        
    }
    
}


-(void) taskTwo {

    @autoreleasepool {
 
        __block NSInteger a = 5;
        
        __block NSInteger b = 100;
        
        dispatch_group_t group = dispatch_group_create();
        
        dispatch_queue_t queueSlow = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
        
        dispatch_queue_t queueFast = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"К a = %ld прибавили 3", (long)a);
            
            a = a + 3;
        });
        
        dispatch_group_async(group, queueFast, ^{
            
            NSLog(@"a = %ld умножили на 2", (long)a);
        
            a = a * 2;
        });
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"К a = %ld прибавили 8", (long)a);
            
            a = a + 8;
        });
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"К a = %ld прибавили 100", (long)a);
            
            a = a + 100;
        });
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"От a = %ld отняли 10", (long)a);
            
            a = a - 10;
        });
        
        dispatch_group_async(group, queueFast, ^{
            
            NSLog(@"a = %ld поделили на 2", (long)a);
            
            a = a / 2;
        });
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"От b = %ld отняли 5", (long)b);
            
            b = b - 5;
        });
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"От b = %ld отняли 10", (long)b);
            
            b = b - 10;
        });
        
        dispatch_group_async(group, queueFast, ^{
            
            NSLog(@"b = %ld разделили на 5", (long)b);
            
            b = b / 5;
        });
        
        
        dispatch_group_notify(group, queueFast, ^{
            
            NSLog(@"a = %ld, b = %ld", (long)a, (long)b);
        });
        
    }
    
}

@end
