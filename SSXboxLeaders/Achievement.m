//
//  Achievement.m
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "Achievement.h"

@implementation Achievement

- (id)initWithDictionary:(NSDictionary *)achievementDict {
    
    if ((self = [super init])) {

        _Id = [achievementDict valueForKey:@"Id"];
        _TileUrl = [achievementDict valueForKey:@"TileUrl"];
        _Title = [achievementDict valueForKey:@"Title"];
        _Description = [achievementDict valueForKey:@"Description"];
        _GamerScore = [achievementDict valueForKey:@"GamerScore"];
        _DateEarned = [NSDate dateWithTimeIntervalSince1970:[[achievementDict valueForKey:@"DateEarned"] doubleValue]];
        
        
        if ([[achievementDict valueForKey:@"IsSecret"] isEqualToString:@"yes"])
            _IsSecret = YES;
        else
            _IsSecret = NO;
        
        if ([[achievementDict valueForKey:@"Unlocked"] isEqualToString:@"yes"])
            _Unlocked = YES;
        else
            _Unlocked = NO;
        
        if ([[achievementDict valueForKey:@"EarnedOffline"] isEqualToString:@"yes"])
            _EarnedOffline = YES;
        else
            _EarnedOffline = NO;
    }
    
    return self;
}


- (NSString *)description {
    return [NSString stringWithFormat:@"Id: %@\n TileUrl: %@\n Title: %@\n Description: %@\n GamerScore: %@\n IsSecret: %c\n UnLocked: %c\n DateEarned: %@\n EarnedOffline: %c\n", self.Id, self.TileUrl, self.Title, self.Description, self.GamerScore, self.IsSecret, self.Unlocked, self.DateEarned, self.EarnedOffline];
}


@end
