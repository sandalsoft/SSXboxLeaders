### Objective-C wrapper for XboxLeaders.com API

SSXboxLeaders is a block-based Objective-C class that wraps the xboxleaders.com API for easier use in IOS and OS X projects.

There is a demo app included to show basic functionality of the library.  It's very basic, with minimal error checking nor GUI updates, but it works.

## Example
Get profile of a gamertag

``` objective-c
 NSString *gamerTag = @"theholyboot";

    [SSXboxLeaders fetchGamerProfile:gamerTag success:^(GamerProfile *profile) {
        NSLog(@"Profile details: %@", [profile description]);
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
```

Get list of games a gamer has played, and use it as the data source for a UITableView

```  objective-c
NSString *gamerTag = @"theholyboot";
    
    [SSXboxLeaders fetchGamesPlayed:gamerTag success:^(NSArray *gamesPlayed) {
        self.gamesList = gamesPlayed;
        [self.gamesTableView reloadData];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
```

List the achievements a gamer has for a particular game

```  objective-c
NSString *gamerTag = @"theholyboot";
NSNumber *gameId = @"1161890200"; // ID for Fifa13

	[SSXboxLeaders fetchArchievements:gamerTag forTitleId:gameId success:^(NSArray *achievements) {
        
        // Show achievements array in TextView
        self.achievementTextView.text = [achievements description];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
```

List all friends for a gamer and note how many are online of offline

``` objective-c
 NSString *gamerTag = @"theholyboot";
    
    [SSXboxLeaders fetchFriendsInfo:gamerTag success:^(FriendsInfo *friendsInfo) {
        self.friendsList = friendsInfo.Friends;
        self.totalFriendsLabel.text = [NSString stringWithFormat:@"Total Friends: %@",[friendsInfo.TotalFriends stringValue]];
        self.totalFriendsOnlineLabel.text = [NSString stringWithFormat:@"Total Online Friends: %@",[friendsInfo.TotalOnlineFriends stringValue]];
        self.totalFriendsOfflineLabel.text = [NSString stringWithFormat:@"Total Offline Friends: %@",[friendsInfo.TotalOfflineFriends stringValue]];
        
        [self.friendsTableView reloadData];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
```


The library is still actively being developed.  Comments or questions go to @sandalsoft or eric@sandalsoft.com.
