//
//  ViewController.h
//  SSXboxLeaders Demo
//
//  Created by Eric Nelson on 4/28/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DollarDefaultGestures.h"
#import "DollarResult.h"
#import "DollarPGestureRecognizer.h"

@interface ProfileViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UITextView *searchResultsTextView;

@property (strong, nonatomic) DollarPGestureRecognizer *dollarPGestureRecognizer;

@end
