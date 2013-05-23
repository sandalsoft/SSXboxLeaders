//
//  ViewController.m
//  SSXboxLeaders Demo
//
//  Created by Eric Nelson on 4/28/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "ProfileViewController.h"
#import "SSXboxLeaders.h"
#import "DollarDefaultGestures.h"
#import "DollarResult.h"
#import "GestureView.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.dollarPGestureRecognizer = [[DollarPGestureRecognizer alloc] initWithTarget:self
                                                                         action:@selector(gestureRecognized:)];
    [self.dollarPGestureRecognizer setPointClouds:[DollarDefaultGestures defaultPointClouds]];
    [self.dollarPGestureRecognizer setDelaysTouchesEnded:NO];

}
- (IBAction)gestureButtonPressed:(id)sender {
    NSLog(@"pressed");
    GestureView *gestureView = [[GestureView alloc] init];
    [self.view addSubview:gestureView];
    [gestureView setUserInteractionEnabled:YES];
    
    
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
