//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Madina Ibrahim on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"
@interface FISPerson ()

@property (nonatomic, readwrite) NSString *name;

@property (nonatomic, readwrite) NSUInteger ageInYears;

@property (nonatomic, readwrite) NSUInteger heightInInches;

@property (strong, nonatomic, readwrite) NSMutableArray *skills;

@end

@implementation FISPerson

   // the default initializer.

-(instancetype)init {
    self = [self initWithName:@"Madina" ageInYears:46 heightInInches:61];
    return self;
}

     //  a convenience initializer.

-(instancetype)initWithName:(NSString *) name
                 ageInYears:(NSUInteger) ageInYears {
    
    self = [self initWithName:name ageInYears:ageInYears heightInInches:67];
    return self;
}

     //a designated initializer.

-(instancetype)initWithName:(NSString *)name
                 ageInYears:(NSUInteger)age
             heightInInches:(NSUInteger)height {
    
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = age;
        _heightInInches = height;
        _skills = [[NSMutableArray alloc] init];
    }
    return self;
    
}


-(NSString *)celebrateBirthday {
    
    self.ageInYears +=1;
    
    NSString *capturingReturnOfCallingOrdinalAge = [NSString stringWithFormat:@"%lu%@", self.ageInYears, [self ordinalForInteger:self.ageInYears]].uppercaseString;
    
    NSLog(@"%@ %lu", self.name, self.ageInYears);
    
    NSString *name = self.name.uppercaseString;
    
    NSString *happyBirthdayMessage = [NSString stringWithFormat:@"HAPPY %@ BIRTHDAY, %@!!!", capturingReturnOfCallingOrdinalAge, name ];
    
    
    
    
    NSLog(@"%@", happyBirthdayMessage);
    
    return happyBirthdayMessage;


}
    
    // helper method
- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
            ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
            ordinal = @"rd";
        }
        return ordinal;
    }


-(void)learnSkillBash {
    
    if (![self.skills containsObject:@"bash"]){
                    [self.skills addObject:@"bash"];
    }
    
}

-(void)learnSkillXcode {
    
    if (![self.skills containsObject:@"Xcode"]){
        [self.skills addObject:@"Xcode"];
    }
}

-(void)learnSkillObjectiveC {
    
    if (![self.skills containsObject:@"Objective-C"]){
        [self.skills addObject:@"Objective-C"];
    }
}

-(void)learnSkillObjectOrientedProgramming {
    
    if (![self.skills containsObject:@"Object-Oriented Programming"]) {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
    
    
    
}

-(void)learnSkillInterfaceBuilder {
    
    if (![self.skills containsObject:@"Interface Builder"]) {
        [self.skills addObject:@"Interface Builder"];
    }
    
}

-(BOOL)isQualifiedTutor {
    
    if ([self.skills count] >= 4) {
        
        return YES;
        
    } else {
        
        return NO;
    }
    
}

@end
