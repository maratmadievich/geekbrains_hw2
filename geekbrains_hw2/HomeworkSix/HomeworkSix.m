//
//  HomeworkSix.m
//  geekbrains_hw2
//
//  Created by Admin on 3/4/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "HomeworkSix.h"

@implementation HomeworkSix

int (^square)(int) = ^(int number) {
    
    int result = number * number;
    
    NSLog(@"%i в квадрате = %i", number, result);
    
    return result;
};


int (^addition)(int) = ^(int first) {

    int second = arc4random_uniform(100);
    
    int result = first + second;
    
    NSLog(@"%i + %i = %i", first, second, result);
    
    return result;
};


int (^substraction)(int) = ^(int first) {
    
    int second = arc4random_uniform(100);
    
    int result = first - second;
    
    NSLog(@"%i - %i = %i", first, second, result);
    
    return result;
};


int (^multiplication)(int) = ^(int first) {
    
    int second = arc4random_uniform(100);
    
    int result = first * second;
    
    NSLog(@"%i * %i = %i", first, second, result);
    
    return result;
};


int (^deletion)(int) = ^(int first) {
    
    int second = arc4random_uniform(99) + 1;
    
    int result = first / second;
    
    NSLog(@"%i / %i = %i", first, second, result);
    
    return result;
};


-(void)selectTask {
    
    @autoreleasepool {
       
        int value = -1;
        
        do {
        
            printf("\nВыберите задание:\n1) Блоки; \n2) Многопоточность; \n3) NSOperationQueue; \n0) выход.\n");
            
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
                    
                case 3:
                    
                    [self taskThree];
                    
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
        
        int first = 30;
        
        __block int resultSum = 0;
        
        void (^sum)(void) = ^() {
            
            resultSum = addition(first)
                        + substraction(first)
                        + multiplication(first)
                        + deletion(first)
                        + square(first);
        };
        
        sum();
        
        NSLog(@"Результирующим значением всех блоков является %i", resultSum);
    }
    
}


-(void) taskTwo {

    @autoreleasepool {
 
        __block NSInteger a = 5;
        
        __block NSInteger b = 100;
        
        dispatch_group_t group = dispatch_group_create();
        
        dispatch_queue_t queueSlow = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
        
        dispatch_queue_t queueFast = dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0);
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"К a = %ld прибавили 3, queueSlow", (long)a);
            
            a = a + 3;
        });
        
        dispatch_group_async(group, queueFast, ^{
            
            NSLog(@"a = %ld умножили на 2, queueFast", (long)a);
        
            a = a * 2;
        });
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"К a = %ld прибавили 8, queueSlow", (long)a);
            
            a = a + 8;
        });
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"К a = %ld прибавили 100, queueSlow", (long)a);
            
            a = a + 100;
        });
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"От a = %ld отняли 10, queueSlow", (long)a);
            
            a = a - 10;
        });
        
        dispatch_group_async(group, queueFast, ^{
            
            NSLog(@"a = %ld поделили на 2, queueFast", (long)a);
            
            a = a / 2;
        });
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"От b = %ld отняли 5, queueSlow", (long)b);
            
            b = b - 5;
        });
        
        dispatch_group_async(group, queueSlow, ^{
            
            NSLog(@"От b = %ld отняли 10, queueSlow", (long)b);
            
            b = b - 10;
        });
        
        dispatch_group_async(group, queueFast, ^{
            
            NSLog(@"b = %ld разделили на 5, queueFast", (long)b);
            
            b = b / 5;
        });
        
        
        dispatch_group_notify(group, queueFast, ^{
            
            NSLog(@"a = %ld, b = %ld", (long)a, (long)b);
        });
        
    }
    
}


-(void) taskThree {
    
    @autoreleasepool {
        
        __block NSInteger a = 100;
        
        __block NSInteger b = 100;
        
        
        NSOperationQueue *queueFirst = [[NSOperationQueue alloc] init];
        
        NSOperationQueue *queueSecond = [[NSOperationQueue alloc] init];
        

        
        
        NSBlockOperation *operationOne = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"К a = %ld прибавили 3, operationOne", (long)a);
            
            a = a + 3;
        }];
        
        
        NSBlockOperation *operationTwo = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"a = %ld умножили на 2, operationTwo", (long)a);
            
            a = a * 2;
        }];
        
        NSBlockOperation *operationThree = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"К a = %ld прибавили 8, operationThree", (long)a);
            
            a = a + 8;
        }];
        
        NSBlockOperation *operationFour = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"К a = %ld прибавили 100, operationFour", (long)a);
            
            a = a + 100;
        }];
        
        NSBlockOperation *operationFive = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"От a = %ld отняли 10, operationFive", (long)a);
            
            a = a - 10;
        }];
        
        NSBlockOperation *operationSix = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"a = %ld поделили на 2, operationSix", (long)a);
            
            a = a / 2;
        }];
        
        NSBlockOperation *operationSeven = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"От b = %ld отняли 5, operationSeven", (long)b);
            
            b = b - 5;
        }];
        
        NSBlockOperation *operationEight = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"От b = %ld отняли 10, operationEight", (long)b);
            
            b = b - 10;
        }];
        
        NSBlockOperation *operationNine = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"b = %ld разделили на 5, operationNine", (long)b);
            
            b = b / 5;
        }];
        
        NSBlockOperation *operationTen = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"a = %ld, b = %ld", (long)a, (long)b);
        }];
        
        
        [queueFirst addOperation:operationOne];

        [queueFirst addOperation:operationTwo];

        [queueFirst addOperation:operationThree];

        [queueFirst addOperation:operationFour];

        [queueFirst addOperation:operationFive];
        
        
        [operationSix addDependency:operationSeven];
        
        [operationSeven addDependency:operationEight];
        
        [operationEight addDependency:operationNine];
        
        [operationTen addDependency:operationSix];
        
        
        [queueSecond addOperation:operationTen];
        
        [queueSecond addOperation:operationSix];
        
        [queueSecond addOperation:operationSeven];
        
        [queueSecond addOperation:operationEight];
        
        [queueSecond addOperation:operationNine];

    }
    
}

@end


