//
//  SSXboxLeaders.m
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/28/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "SSXboxLeaders.h"
#import "AFNetworking.h"



@implementation SSXboxLeaders

NSString *const XboxLeadersUrl = @"http://www.xboxleaders.com";
NSString *const XboxLeadersProfilePath = @"/api/profile/%@.json";
NSString *const XboxLeadersGamesPath = @"/api/games.json"; //?gamertag=%@";
NSString *const XboxLeadersAchievementsPath = @"/api/achievements.json"; //?gamertag=%@&titleid=%@";
NSString *const XboxLeadersFriendsPath = @"/api/friends.json?"; //gamertag=%@";

NSString *const JSONDataKey = @"Data";
NSString *const GamesArrayKey = @"PlayedGames";
NSString *const GamesCountKey = @"GameCount";
NSString *const AchievementsArrayKey = @"Achievements";

+ (void)fetchGamerProfile:(NSString *)gamerTag
                            success:(void (^)(GamerProfile *profile))success
                            failure:(void (^)(NSError *error))failure {
    
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:XboxLeadersUrl]];
    NSMutableURLRequest *request =  [client requestWithMethod:@"GET" path:[NSString stringWithFormat:XboxLeadersProfilePath, gamerTag] parameters:nil];
    [request setHTTPShouldUsePipelining:YES];
    AFJSONRequestOperation *jsonOperation = [AFJSONRequestOperation
                                             JSONRequestOperationWithRequest:request
                                             success: ^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
                                                 GamerProfile *profile = [[GamerProfile alloc] init];
                                                 if  ([JSON valueForKey:JSONDataKey]) {
                                                     [profile setValuesForKeysWithDictionary:[JSON valueForKey:JSONDataKey]];
                                                     success(profile);
                                                 }
                                             }
                                             failure:
                                             ^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
                                                 failure(error);
                                             }];
    [jsonOperation start];
}

+ (void)fetchGamesPlayed:(NSString *)gamerTag
                 success:(void (^)(NSArray *))success
                 failure:(void (^)(NSError *))failure {
    
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:XboxLeadersUrl]];
    NSMutableURLRequest *request =  [client requestWithMethod:@"GET" path:XboxLeadersGamesPath parameters:@{@"gamertag":gamerTag}];
    [request setHTTPShouldUsePipelining:YES];
    AFJSONRequestOperation *jsonOperation = [AFJSONRequestOperation
                                             JSONRequestOperationWithRequest:request
                                             success: ^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
                                                 
                                                 // If the response has data we want
                                                 if  ([JSON valueForKey:JSONDataKey]) {
                                                     // Pull out the array of Games using valueforkeypath()
                                                     NSArray *playedGamesArray = [[NSArray alloc] initWithArray:[JSON valueForKeyPath:[NSString stringWithFormat:@"%@.%@", JSONDataKey, GamesArrayKey]] copyItems:YES];
                                                     
                                                     // Create mutable array that will hold the Game objects
                                                     NSMutableArray *playedGamesMut = [[NSMutableArray alloc] init];

                                                     // Itereate over the array, create Game objects and shove them into a new array that 'gets returned' (not really returned since we're using blocks but it's the one that the user gets access too.
                                                     for (NSDictionary *playedGame in playedGamesArray) {
                                                         Game *game = [[Game alloc] init];
                                                         [game setValuesForKeysWithDictionary:playedGame];
                                                         [playedGamesMut addObject:game];
                                                     }
                                                     
                                                     // Create NSArray to return.  We don't want a mutable copy for the user so we need to create a non-mutable copy.
                                                     NSArray *playedGames = [[NSArray alloc] initWithArray:playedGamesMut];
                                                     success(playedGames);
                                                 }
                                             }
                                             failure:
                                             ^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
                                                 failure(error);
                                             }];
    [jsonOperation start];

}

+ (void)fetchArchievements:(NSString *)gamerTag
                forTitleId:(NSNumber *)titleId
                   success:(void (^)(NSArray *))success
                   failure:(void (^)(NSError *))failure {
    
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:XboxLeadersUrl]];
    NSMutableURLRequest *request =  [client requestWithMethod:@"GET" path:XboxLeadersAchievementsPath parameters:@{@"gamertag":gamerTag, @"titleid":titleId}];
    [request setHTTPShouldUsePipelining:YES];
    AFJSONRequestOperation *jsonOperation = [AFJSONRequestOperation
                                             JSONRequestOperationWithRequest:request
                                             success: ^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
                                                 
                                                 // If the response has data we want
                                                 if  ([JSON valueForKey:JSONDataKey]) {
                                                    
                                                     
                                                     // Pull out the array of Achievements using valueforkeypath()
                                                     NSArray *achievementsArray = [[NSArray alloc] initWithArray:[JSON valueForKeyPath:[NSString stringWithFormat:@"%@.%@", JSONDataKey, AchievementsArrayKey]] copyItems:YES];
                                                     
                                                     // Create mutable array that will hold the Achievement objects
                                                     NSMutableArray *achievementsMut = [[NSMutableArray alloc] init];
                                                     
                                                     // Itereate over the array, create Achievement objects and shove them into a new array that 'gets returned' (not really returned since we're using blocks but it's the one that the user gets access too.
                                                     for (NSDictionary *achievementDict in achievementsArray) {
                                                         Achievement *achievement = [[Achievement alloc] init];
                                                         [achievement setValuesForKeysWithDictionary:achievementDict];
                                                         [achievementsMut addObject:achievement];
                                                     }
                                                     
                                                     // Create NSArray to return.  We don't want a mutable copy for the user so we need to create a non-mutable copy.
                                                     NSArray *achievements = [[NSArray alloc] initWithArray:achievementsMut];
                                                     success(achievements);
                                                 }
                                             }
                                             failure:
                                             ^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
                                                 failure(error);
                                             }];
    [jsonOperation start];

}



@end
