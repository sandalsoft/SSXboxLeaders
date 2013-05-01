//
//  GamerProfile.m
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/28/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "GamerProfile.h"

@implementation GamerProfile


- (id)initWithDictionary:(NSDictionary *)achievementDict {

    if ((self = [super init])) {
    
        if ([[achievementDict valueForKey:@"IsValid"] integerValue] == 1)
            _IsValid = YES;
        if ([[achievementDict valueForKey:@"IsCheater"] integerValue] == 1)
            _IsCheater = YES;
        if ([[achievementDict valueForKey:@"IsOnline"] integerValue] == 1)
            _IsOnline = YES;
        if ([[achievementDict valueForKey:@"XBLLaunchTeam"] integerValue] == 1)
            _XBLLaunchTeam = YES;
        if ([[achievementDict valueForKey:@"NXELaunchTeam"] integerValue] == 1)
            _NXELaunchTeam = YES;
        if ([[achievementDict valueForKey:@"KinectLaunchTeam"] integerValue] == 1)
            _KinectLaunchTeam = YES;
        
        _AvatarTile = [NSURL URLWithString:[achievementDict valueForKey:@"AvatarTile"]];
        _AvatarSmall = [NSURL URLWithString:[achievementDict valueForKey:@"AvatarSmall"]];
        _AvatarLarge = [NSURL URLWithString:[achievementDict valueForKey:@"AvatarLarge"]];
        _AvatarBody = [NSURL URLWithString:[achievementDict valueForKey:@"AvatarBody"]];
        _AvatarTileSSL = [NSURL URLWithString:[achievementDict valueForKey:@"AvatarTileSSL"]];
        _AvatarSmallSSL = [NSURL URLWithString:[achievementDict valueForKey:@"AvatarSmallSSL"]];
        _AvatarLargeSSL = [NSURL URLWithString:[achievementDict valueForKey:@"AvatarLargeSSL"]];
        _AvatarBodySSL = [NSURL URLWithString:[achievementDict valueForKey:@"AvatarBodySSL"]];
        
        _Tier = [achievementDict valueForKey:@"Tier"];
        _OnlineStatus = [achievementDict valueForKey:@"OnlineStatus"];
        _Gamertag = [achievementDict valueForKey:@"Gamertag"];
        _GamerScore = [achievementDict valueForKey:@"GamerScore"];
        _Reputation = [achievementDict valueForKey:@"Reputation"];
        _Motto = [achievementDict valueForKey:@"Motto"];
        _Location = [achievementDict valueForKey:@"Location"];
        _Name = [achievementDict valueForKey:@"Name"];
        _Bio = [achievementDict valueForKey:@"Bio"];
    }
    return self;
}




- (NSString *)description {
    return [NSString stringWithFormat:@"Tier: %@\n IsValid: %c\n IsCheater: %c\n IsOnline: %c\n OnlineStatus: %@\n XBLLaunchTeam: %c\n NXELaunchTeam: %c\n KinectLaunchTeam: %c\n AvatarTile: %@\n AvatarSmall: %@\n AvatarLarge; %@\n AVatarBody: %@\n AvatarTileSSL: %@\n AvatarSmallSSL: %@\n AvatarLargeSSL %@\n AvatarBodySSL: %@\n GamerTag: %@\n GamerScore: %@\n Reputation: %@\n Motto: %@\n Location: %@\n Name: %@\n Bio: %@\n ", self.Tier, self.IsValid, self.IsCheater, self.IsOnline, self.OnlineStatus, self.XBLLaunchTeam, self.NXELaunchTeam, self.KinectLaunchTeam, self.AvatarTile, self.AvatarSmall, self.AvatarLarge, self.AvatarBody, self.AvatarTileSSL, self.AvatarSmallSSL, self.AvatarLargeSSL, self.AvatarBodySSL, self.Gamertag, self.GamerScore, self.Reputation, self.Motto, self.Location, self.Name, self.Bio];
            
}

@end
