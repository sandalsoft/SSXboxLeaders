//
//  Achievement.m
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "Achievement.h"

@implementation Achievement


- (void)setTitleUrl:(NSString *) stringInput  {
    _TileUrl = [NSURL URLWithString:stringInput];
}


- (void)setIsSecret:(NSString *)stringInput {
    if ([stringInput isEqualToString:@"yes"])
        _IsSecret = YES;
    else
        _IsSecret = NO;
}

- (void)setUnlocked:(NSString *)stringInput {
    if ([stringInput isEqualToString:@"yes"])
        _Unlocked = YES;
    else
        _Unlocked = NO;
}

- (void)setDateEarned:(NSNumber *) numberInput  {
    _DateEarned = [NSDate dateWithTimeIntervalSince1970:[numberInput doubleValue]];
}

- (void)setEarnedOffline:(NSString *)stringInput {
    if ([stringInput isEqualToString:@"yes"])
        _EarnedOffline = YES;
    else
        _EarnedOffline = NO;
}




- (NSString *)description {
    return [NSString stringWithFormat:@"Id: %@\n TileUrl: %@\n Title: %@\n Description: %@\n GamerScore: %@\n IsSecret: %c\n UnLocked: %c\n DateEarned: %@\n EarnedOffline: %c\n", self.Id, self.TileUrl, self.Title, self.Description, self.GamerScore, self.IsSecret, self.Unlocked, self.DateEarned, self.EarnedOffline];
}


@end
