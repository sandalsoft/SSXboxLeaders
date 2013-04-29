//
//  SSXboxLeaders.h
//  SSXboxLeaders
//
//  Created by Eric Nelson on 4/28/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GamerProfile.h"

@interface SSXboxLeaders : NSObject

+ (void)fetchGamerProfile:(NSString *)gamerTag
                            success:(void (^)(GamerProfile *profile))success
                            failure:(void (^)(NSError *error))failure;


@end

