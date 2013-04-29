//
//  GamerProfile.m
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/28/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "GamerProfile.h"

@implementation GamerProfile



- (void)setAvatarBody:(NSString *)stringInput  {
    _AvatarBody = [NSURL URLWithString:stringInput];
}

- (void)setAvatarBodySSL:(NSString *)stringInput  {
    _AvatarBodySSL = [NSURL URLWithString:stringInput];
}

- (void)setAvatarLarge:(NSString *)stringInput  {
    _AvatarLarge = [NSURL URLWithString:stringInput];
}

- (void)setAvatarLargeSSL:(NSString *)stringInput  {
    _AvatarLargeSSL = [NSURL URLWithString:stringInput];
}

- (void)setAvatarSmall:(NSString *)stringInput  {
    _AvatarSmall = [NSURL URLWithString:stringInput];
}

- (void)setAvatarSmallSSL:(NSString *)stringInput  {
    _AvatarSmallSSL = [NSURL URLWithString:stringInput];
}

- (void)setAvatarTile:(NSString *)stringInput  {
    _AvatarTile = [NSURL URLWithString:stringInput];
}

- (void)setAvatarTileSSL:(NSString *)stringInput  {
    _AvatarTileSSL = [NSURL URLWithString:stringInput];
}


- (NSString *)description {
    return [NSString stringWithFormat:@"Tier: %@\n IsValid: %c\n IsCheater: %c\n IsOnline: %c\n OnlineStatus: %@\n XBLLaunchTeam: %c\n NXELaunchTeam: %c\n KinectLaunchTeam: %c\n AvatarTile: %@\n AvatarSmall: %@\n AvatarLarge; %@\n AVatarBody: %@\n AvatarTileSSL: %@\n AvatarSmallSSL: %@\n AvatarLargeSSL %@\n AvatarBodySSL: %@\n GamerTag: %@\n GamerScore: %@\n Reputation: %@\n Motto: %@\n Location: %@\n Name: %@\n Bio: %@\n ", self.Tier, self.IsValid, self.IsCheater, self.IsOnline, self.OnlineStatus, self.XBLLaunchTeam, self.NXELaunchTeam, self.KinectLaunchTeam, self.AvatarTile, self.AvatarSmall, self.AvatarLarge, self.AvatarBody, self.AvatarTileSSL, self.AvatarSmallSSL, self.AvatarLargeSSL, self.AvatarBodySSL, self.Gamertag, self.GamerScore, self.Reputation, self.Motto, self.Location, self.Name, self.Bio];
            
}

@end
