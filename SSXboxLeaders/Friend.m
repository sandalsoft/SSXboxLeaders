//
//  Friend.m
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/30/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "Friend.h"

@implementation Friend


- (id)initWithDictionary:(NSDictionary *)friendDict {
    if ((self = [super init])) {
        _Gamertag = [friendDict valueForKey:@"Gamertag"];
        _OnlineStatus = [friendDict valueForKey:@"OnlineStatus"];
        _AvatarSmall = [NSURL URLWithString:[friendDict valueForKey:@"AvatarSmall"]];
        _AvatarLarge = [NSURL URLWithString:[friendDict valueForKey:@"AvatarLarge"]];
        _GamerScore = [friendDict valueForKey:@"GamerScore"];
        _IsOnline = [[friendDict valueForKey:@"IsOnline"] boolValue];
        _PresenceInfo = [friendDict valueForKey:@"PresenceInfo"];
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Gamertag: %@\n OnlineStatus: %@\n AvatarSmall: %@\n AvatarLarge: %@\n GamerScore: %@\n IsOnline: %c\n PresenceInfo: %@\n", self.Gamertag, self.OnlineStatus, self.AvatarSmall, self.AvatarLarge, self.GamerScore, self.IsOnline, self.PresenceInfo];
    
}


@end
