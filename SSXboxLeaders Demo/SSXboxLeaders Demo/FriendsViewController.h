//
//  FriendsViewController.h
//  SSXboxLeaders Demo
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UILabel *totalFriendsLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalFriendsOnlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalFriendsOfflineLabel;
@property (weak, nonatomic) IBOutlet UITableView *friendsTableView;


@property (strong, nonatomic) NSArray *friendsList;
@end
