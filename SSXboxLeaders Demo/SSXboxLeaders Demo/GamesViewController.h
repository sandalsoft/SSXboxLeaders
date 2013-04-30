//
//  GamesViewController.h
//  SSXboxLeaders Demo
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GamesViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UITableView *gamesTableView;

@property (weak, nonatomic) IBOutlet UITextView *gameDetailTextView;

@property (strong, nonatomic) NSArray *gamesList;
@end
