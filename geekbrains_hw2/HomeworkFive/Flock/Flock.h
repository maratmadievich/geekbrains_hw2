//
//  Flock.h
//  geekbrains_hw2
//
//  Created by Admin on 2/18/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Flock : NSObject

- (void)configure:(NSArray *)birds;

@property (nonatomic, strong) NSArray *birds;

@end
