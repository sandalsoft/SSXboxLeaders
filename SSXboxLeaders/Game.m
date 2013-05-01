//
//  Game.m
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "Game.h"

@implementation Game


- (id)initWithDictionary:(NSDictionary *)gameDict {
    
    if ((self = [super init])) {
        _Id = [gameDict valueForKey:@"Id"];
        _Title = [gameDict valueForKey:@"Title"];
        _Url = [NSURL URLWithString:[gameDict valueForKey:@"Url"]];
        _BoxArt = [NSURL URLWithString:[gameDict valueForKey:@"BoxArt"]];
        _LargeBoxArt = [NSURL URLWithString:[gameDict valueForKey:@"LargeBoxArt"]];
        _EarnedGamerScore = [gameDict valueForKey:@"EarnedGamerScore"];
        _PossibleGamerScore = [gameDict valueForKey:@"PossibleGamerScore"];
        _EarnedAchievements = [gameDict valueForKey:@"EarnedAchievements"];
        _PossibleAchievements = [gameDict valueForKey:@"PossibleAchievements"];
        _PercentageCompleted = [gameDict valueForKey:@"PercentageCompleted"];
        _LastPlayed = [NSDate dateWithTimeIntervalSince1970:[[gameDict valueForKey:@"LastPlayed"] doubleValue]];
    }
    
    return self;
}


- (NSString *)description {
    return [NSString stringWithFormat:@"Id: %@\n Title: %@\n Url: %@\n BoxArt: %@\n LargeBoxArt: %@\n EarnedGamerScore: %@\n PosibleGamerScore: %@\n EarnedAchievements: %@\n PossibleAchievements: %@\n PercentageCompleted: %@\n LastPlayed: %@\n", self.Id, self.Title, self.Url, self.BoxArt, self.LargeBoxArt, self.EarnedGamerScore, self.PossibleGamerScore, self.EarnedAchievements, self.PossibleAchievements, self.PercentageCompleted, self.LastPlayed];
}


@end
