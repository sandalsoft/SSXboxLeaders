//
//  Game.m
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "Game.h"

@implementation Game


- (void)setUrl:(NSString *)stringInput  {
    _Url = [NSURL URLWithString:stringInput];
}

- (void)setBoxArt:(NSString *)stringInput  {
    _BoxArt = [NSURL URLWithString:stringInput];
}

- (void)setLargeBoxArt:(NSString *)stringInput  {
    _LargeBoxArt = [NSURL URLWithString:stringInput];
}

- (void)setLastPlayed:(NSNumber *) numberInput  {
    _LastPlayed = [NSDate dateWithTimeIntervalSince1970:[numberInput doubleValue]];
}


- (NSString *)description {
    return [NSString stringWithFormat:@"Id: %@\n Title: %@\n Url: %@\n BoxArt: %@\n LargeBoxArt: %@\n EarnedGamerScore: %@\n PosibleGamerScore: %@\n EarnedAchievements: %@\n PossibleAchievements: %@\n PercentageCompleted: %@\n LastPlayed: %@\n", self.Id, self.Title, self.Url, self.BoxArt, self.LargeBoxArt, self.EarnedGamerScore, self.PossibleGamerScore, self.EarnedAchievements, self.PossibleAchievements, self.PercentageCompleted, self.LastPlayed];
}


@end
