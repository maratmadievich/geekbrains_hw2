//
//  Wing.h
//  geekbrains_hw2
//
//  Created by Admin on 2/18/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wing : NSObject

- (instancetype) initWithCount:(NSNumber *)count andReach:(NSNumber *)reach;

@property (nonatomic, strong) NSNumber *_count;

@property (nonatomic, strong) NSNumber *_reach;

- (float)count;

- (float)reach;

@end

