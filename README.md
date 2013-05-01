### Objective-C wrapper for XboxLeaders.com API

SSXboxLeaders is an Objective-C class that wraps the xboxleaders.com API for easier use in IOS projects.

There is a demo app included to show basic functionality of the library.  It's junk, with no error checking or GUI updates, but it works.

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
