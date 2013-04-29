//
//  GamesViewController.m
//  SSXboxLeaders Demo
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "GamesViewController.h"

@interface GamesViewController ()

@end

@implementation GamesViewController


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
    
    [SSXboxLeaders fetchGamesPlayed:gamerTag success:^(NSArray *gamesPlayed) {
        for (Game *game in gamesPlayed) {
            NSLog(@"------------ game: %@", game);
        }
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];

    
}

@end
