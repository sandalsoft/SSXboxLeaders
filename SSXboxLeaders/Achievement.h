//
//  Achievement.h
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Achievement : NSObject

@property (weak, nonatomic) NSNumber *Id;
@property (weak, nonatomic) NSURL *TitleUrl;
@property (weak, nonatomic) NSString *Title;
@property (weak, nonatomic) NSString *Description;
@property (weak, nonatomic) NSNumber *GamerScore;
@property (nonatomic) BOOL IsSecret;
@property (nonatomic) BOOL Unlocked;
@property (weak, nonatomic) NSDate *DateEarned;
@property (nonatomic) BOOL EarnedOffline;

@end
