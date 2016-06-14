//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Madina Ibrahim on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (nonatomic, readonly) NSString *name;

@property (nonatomic, readonly) NSUInteger ageInYears;

@property (nonatomic, readonly) NSUInteger heightInInches;

@property (strong, nonatomic, readonly) NSMutableArray *skills;

-(instancetype)init; // the default initializer.

-(instancetype)initWithName:(NSString *) name
                 ageInYears:(NSUInteger)age;   //  a convenience initializer.

-(instancetype)initWithName:(NSString *)name
                 ageInYears:(NSUInteger)age
             heightInInches:(NSUInteger)height;  //a designated initializer.

-(NSString *)celebrateBirthday;

-(void)learnSkillBash;

-(void)learnSkillXcode;

-(void)learnSkillObjectiveC;

-(void)learnSkillObjectOrientedProgramming;

-(void)learnSkillInterfaceBuilder;

-(BOOL)isQualifiedTutor;

@end
