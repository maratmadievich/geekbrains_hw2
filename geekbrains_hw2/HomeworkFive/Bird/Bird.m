//
//  Bird.m
//  geekbrains_hw2
//
//  Created by Admin on 2/18/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "Bird.h"
#import "Wing.h"

@implementation Bird

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"Создание птицы");
    }
    return self;
}

- (instancetype)initWithBreed:(NSString *)breed andWing:(Wing *)wing {
    self = [super init];
    if (self) {
        [wing retain];
        [wing release];
        _wing = wing;
        NSLog(@"Добавлены крылья птице");
        
        [breed retain];
        [breed release];
        _breed = breed;
    }
    return self;
}

- (void)showBird {
    NSLog(@"Порода - %@; количество крыльев - %f; размах крыльев - %f", _breed, [_wing count], [_wing reach]);
}

- (void)remove {
    NSLog(@"Удаляется птичка");
    [_breed release];
    [_wing release];
}

- (void)dealloc {
    [self remove];
    NSLog(@"Dealloc птички");
    [super dealloc];
}

@end
