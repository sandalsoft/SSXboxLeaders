//
//  Game.h
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject


@property (strong, nonatomic) NSNumber *Id;
@property (strong, nonatomic) NSString *Title;
@property (strong, nonatomic) NSURL *Url;
@property (strong, nonatomic) NSURL *BoxArt;
@property (strong, nonatomic) NSURL *LargeBoxArt;
@property (strong, nonatomic) NSNumber *EarnedGamerScore;
@property (strong, nonatomic) NSNumber *PossibleGamerScore;
@property (strong, nonatomic) NSNumber *EarnedAchievements;
@property (strong, nonatomic) NSNumber *PossibleAchievements;
@property (strong, nonatomic) NSNumber *PercentageCompleted;
@property (strong, nonatomic) NSDate *LastPlayed;

@end
