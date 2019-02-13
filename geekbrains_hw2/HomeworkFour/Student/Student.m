//
//  Student.m
//  geekbrains_hw2
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize _age = age;

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setName: @"Name"];
        [self setSurname: @"Surname"];
    }
    return self;
}

- (NSString *)name {
    return self._name;
}
- (void)setName:(NSString *)name {
    self._name = name;
}

- (NSString *)surname {
    return self._surname;
}
- (void)setSurname:(NSString *)surname {
    self._surname = surname;
}

- (NSString *)fullname {
    return [NSString stringWithFormat:@"%@ %@", self._surname, self._name];
}

- (NSInteger )age {
    return self._age;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Студент - %@, лет - %ld", [self fullname], (long)[self age]];
}

- (void)additionAge:(NSInteger)addAge {
    age += addAge;
}

@end
