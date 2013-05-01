//
//  Friend.h
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/30/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Friend : NSObject

@property (strong, nonatomic) NSString *Gamertag;
@property (strong, nonatomic) NSString *OnlineStatus;
@property (strong, nonatomic) NSURL *AvatarSmall;
@property (strong, nonatomic) NSURL *AvatarLarge;
@property (strong, nonatomic) NSNumber *GamerScore;
@property BOOL IsOnline;
@property (strong, nonatomic) NSDictionary *PresenceInfo;

- (id)initWithDictionary:(NSDictionary *)friendDict;

- (NSString *)description;

@end
