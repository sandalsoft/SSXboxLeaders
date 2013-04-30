//
//  GamesViewController.m
//  SSXboxLeaders Demo
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "GamesViewController.h"
#import "Game.h"

@interface GamesViewController ()

@end

@implementation GamesViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.gamesTableView.dataSource = self;
    self.gamesTableView.delegate = self;

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
        self.gamesList = gamesPlayed;
        [self.gamesTableView reloadData];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

#pragma mark TableView Delegates

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.gamesList count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Game *game = [[Game alloc] init];
    game = [self.gamesList objectAtIndex:[indexPath row]];
    self.gameDetailTextView.text = [game description];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Game"];
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Game"];
    
    Game *game = [[Game alloc] init];
    game = [self.gamesList objectAtIndex:[indexPath row]];
    cell.textLabel.text = game.Title;
    
//    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
//    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
//    cell.detailTextLabel.text = dateString;
    
    return cell;
}

@end
