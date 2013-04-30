//
//  FriendsInfo.h
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/30/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FriendsInfo : NSObject

@property (strong, nonatomic) NSNumber *TotalFriends;
@property (strong, nonatomic) NSNumber *TotalOnlineFriends;
@property (strong, nonatomic) NSNumber *TotalOfflineFriends;
@property (strong, nonatomic) NSArray *Friends;

@end
