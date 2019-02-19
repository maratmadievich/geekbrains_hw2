//
//  Wing.m
//  geekbrains_hw2
//
//  Created by Admin on 2/18/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "Wing.h"

@implementation Wing

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"Create wing");
    }
    return self;
}


- (instancetype)initWithCount:(NSNumber *)count andReach:(NSNumber *)reach {
    self = [super init];
    if (self) {
        [__count retain];
        [__count release];
        __count = count;
        NSLog(@"Созданы крылья");
        
        [reach retain];
        [reach release];
        __reach = reach;
    }
    return self;
}


- (float)reach {
    return [__reach floatValue];
}

- (float)count {
    return [__count floatValue];
}

@end
