//
//  Achievement.h
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Achievement : NSObject

@property (strong, nonatomic) NSNumber *Id;
@property (strong, nonatomic) NSURL *TileUrl;
@property (strong, nonatomic) NSString *Title;
@property (strong, nonatomic) NSString *Description;
@property (strong, nonatomic) NSNumber *GamerScore;
@property (nonatomic) BOOL IsSecret;
@property (nonatomic) BOOL Unlocked;
@property (strong, nonatomic) NSDate *DateEarned;
@property (nonatomic) BOOL EarnedOffline;

- (id)initWithDictionary:(NSDictionary *)achievementDict;

@end
