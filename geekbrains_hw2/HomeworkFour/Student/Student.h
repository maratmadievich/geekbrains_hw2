//
//  Student.h
//  geekbrains_hw2
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property () NSString *_name;
@property () NSString *_surname;

@property (readonly) NSInteger _age;

- (NSString *)name;
- (void)setName:(NSString *)name;

- (NSString *)surname;
- (void)setSurname:(NSString *)surname;

- (NSString *)fullname;

- (NSInteger )age;

- (NSString *)description;

- (void)additionAge:(NSInteger)addAge;

@end

