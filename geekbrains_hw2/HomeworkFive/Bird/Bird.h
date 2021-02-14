//
//  Bird.h
//  geekbrains_hw2
//
//  Created by Admin on 2/18/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wing.h"

@interface Bird : NSObject

- (instancetype)initWithBreed:(NSString *)breed andWing:(Wing *)wing;

- (void)showBird;

@property (nonatomic, strong) Wing *wing;

@property (nonatomic, strong) NSString *breed;

@end

