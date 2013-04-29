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
NSString *const XboxLeadersPath = @"/api/profile/%@.json";
NSString *const JSONDataKey = @"Data";

- (void)fetchGamerProfile:(NSString *)gamerTag
                            success:(void (^)(GamerProfile *profile))success
                            failure:(void (^)(NSError *error))failure {
    
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:XboxLeadersUrl]];
    NSMutableURLRequest *request =  [client requestWithMethod:@"GET" path:[NSString stringWithFormat:XboxLeadersPath, gamerTag] parameters:nil];
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

    

@end
