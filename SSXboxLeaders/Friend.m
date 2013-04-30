//
//  Friend.m
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/30/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "Friend.h"

@implementation Friend


- (void)setAvatarLarge:(NSString *)stringInput  {
    _AvatarLarge = [NSURL URLWithString:stringInput];
}

- (void)setAvatarSmall:(NSString *)stringInput  {
    _AvatarSmall = [NSURL URLWithString:stringInput];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Gamertag: %@\n OnlineStatus: %@\n AvatarSmall: %@\n AvatarLarge: %@\n GamerScore: %@\n IsOnline: %c\n PresenceInfo: %@\n", self.Gamertag, self.OnlineStatus, self.AvatarSmall, self.AvatarLarge, self.GamerScore, self.IsOnline, self.PresenceInfo];
    
}


@end
