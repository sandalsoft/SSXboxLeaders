//
//  FriendsViewController.m
//  SSXboxLeaders Demo
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "FriendsViewController.h"

@interface FriendsViewController ()

@end

@implementation FriendsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)searchButtonPressed:(id)sender {
    [self.searchTextField resignFirstResponder];
    NSString *gamerTag = [self.searchTextField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    [SSXboxLeaders fetchFriendsInfo:gamerTag success:^(FriendsInfo *friendsInfo) {
        self.friendsList = friendsInfo.Friends;
        self.totalFriendsLabel.text = [friendsInfo.TotalFriends stringValue];
        self.totalFriendsOnlineLabel.text = [friendsInfo.TotalOnlineFriends stringValue];
        self.totalFriendsOfflineLabel.text = [friendsInfo.TotalOfflineFriends stringValue];
        
        [self.friendsTableView reloadData];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
     
}


#pragma mark TableView Delegates

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"[self.friendsList count]: %i", [self.friendsList count]);
    return [self.friendsList count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Friend"];
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Friend"];
    
    Friend *friend = [[Friend alloc] init];
    friend = [self.friendsList objectAtIndex:[indexPath row]];
    cell.textLabel.text = friend.Gamertag;
        
    return cell;
}



@end
