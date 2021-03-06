//
//  SSXboxLeaders.h
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/28/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GamerProfile.h"
#import "Game.h"
#import "Achievement.h"
#import "Friend.h"
#import "FriendsInfo.h"


@interface SSXboxLeaders : NSObject

+ (void)fetchGamerProfile:(NSString *)gamerTag
                            success:(void (^)(GamerProfile *profile))success
                            failure:(void (^)(NSError *error))failure;

+ (void)fetchGamesPlayed:(NSString *)gamerTag
                 success:(void (^)(NSArray *gamesPlayed))success
                 failure:(void (^)(NSError *error))failure;

+ (void)fetchArchievements:(NSString *)gamerTag
                forTitleId:(NSNumber *)titleId
                success:(void (^)(NSArray *achievements))success
                 failure:(void (^)(NSError *error))failure;

+ (void)fetchFriendsInfo:(NSString *)gamerTag
                 success:(void (^)(FriendsInfo *friendsInfo))success
                 failure:(void (^)(NSError *error))failure;



@end

