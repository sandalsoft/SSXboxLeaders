//
//  AchievementsViewController.m
//  SSXboxLeaders Demo
//
//  Created by Eric Nelson on 4/29/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "AchievementsViewController.h"
#import "Achievement.h"

@interface AchievementsViewController ()

@end

@implementation AchievementsViewController

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
    NSLog(@"getting games ");  
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
    NSLog(@"getting achievement");  
    Game *game = [[Game alloc] init];
    game = [self.gamesList objectAtIndex:[indexPath row]];
    
    [SSXboxLeaders fetchArchievements:[self.searchTextField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] forTitleId:game.Id success:^(NSArray *achievements) {
        Achievement *achievement = [[Achievement alloc] init];  
        
        achievement = [achievements objectAtIndex:[indexPath row]];
        self.achievementTextView.text = [achievements description];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Game"];
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Game"];
    
    Game *game = [[Game alloc] init];
    game = [self.gamesList objectAtIndex:[indexPath row]];
    cell.textLabel.text = game.Title;
    
    return cell;
}



@end
