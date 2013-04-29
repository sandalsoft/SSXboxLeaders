### Objective-C wrapper for XboxLeaders.com API

SSXboxLeaders is an Objective-C class that wraps the xboxleaders.com API for easier use in IOS projects.  So far only the profile functionality has been implemented

## Example
``` objective-c
 NSString *gamerTag = @"theholyboot";

    [SSXboxLeaders fetchGamerProfile:gamerTag success:^(GamerProfile *profile) {
        NSLog(@"Profile details: %@", [profile description]);
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
```

The library is still actively being developed.  Comments or questions go to @sandalsoft.
