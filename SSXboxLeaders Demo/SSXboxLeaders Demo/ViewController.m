//
//  ViewController.m
//  SSXboxLeaders Demo
//
//  Created by Eric Nelson on 4/28/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "ViewController.h"
#import "SSXboxLeaders.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)searchButtonPressed:(id)sender {
    [self.searchTextField resignFirstResponder];
    NSString *gamerTag = [self.searchTextField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    [SSXboxLeaders fetchGamerProfile:gamerTag success:^(GamerProfile *profile) {
        self.searchResultsTextView.text = [profile description];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
