//
//  GamerProfile.h
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/28/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GamerProfile : NSObject

@property (strong, nonatomic) NSString *Tier;
@property BOOL IsValid;
@property BOOL IsCheater;
@property BOOL IsOnline;
@property (strong, nonatomic) NSString *OnlineStatus;
@property BOOL XBLLaunchTeam;
@property BOOL NXELaunchTeam;
@property BOOL KinectLaunchTeam;
@property (strong, nonatomic) NSURL *AvatarTile;
@property (strong, nonatomic) NSURL *AvatarSmall;
@property (strong, nonatomic) NSURL *AvatarLarge;
@property (strong, nonatomic) NSURL *AvatarBody;
@property (strong, nonatomic) NSURL *AvatarTileSSL;
@property (strong, nonatomic) NSURL *AvatarSmallSSL;
@property (strong, nonatomic) NSURL *AvatarLargeSSL;
@property (strong, nonatomic) NSURL *AvatarBodySSL;
@property (strong, nonatomic) NSString *Gamertag;
@property (strong, nonatomic) NSNumber *GamerScore;
@property (strong, nonatomic) NSNumber *Reputation;
@property (strong, nonatomic) NSString *Motto;
@property (strong, nonatomic) NSString *Location;
@property (strong, nonatomic) NSString *Name;
@property (strong, nonatomic) NSString *Bio;

@end
