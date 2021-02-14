//
//  Flock.m
//  geekbrains_hw2
//
//  Created by Admin on 2/18/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "Flock.h"
#import "Bird.h"

@implementation Flock

- (instancetype)init {
   
    self = [super init];
    
    if (self) {
    
        NSLog(@"Создается стая");
    }
    
    return self;
}


- (void)configure:(NSArray *)birds {

    [birds retain];

    [birds release];

    _birds = birds;

    for (Bird *bird in birds) {

        NSLog(@"Добавлена новая птичка.");

        [bird showBird];
    }
    
}


- (void)remove {
    
    NSLog(@"Удаление птичек из стаи (жалко, но куда деваться)");
    
    for (Bird *bird in _birds) {
    
        [bird release];
    }
    
    [_birds release];
}


- (void)dealloc {
    
    [self remove];
    
    NSLog(@"Dealloc стаи");
    
    [super dealloc];
}

@end
