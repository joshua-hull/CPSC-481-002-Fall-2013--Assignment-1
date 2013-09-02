//
//  ViewController.m
//  CP SC 481 Assignment 1
//
//  Created by Joshua Hull on 9/1/13.
//  Copyright (c) 2013 Joshua Hull. All rights reserved.
//

#import "ViewController.h"

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
- (IBAction)doneEditingFrom:(UITextField *)sender {
    [_toField becomeFirstResponder];
}

- (IBAction)doneEditingTo:(UITextField *)sender {
    [_toField resignFirstResponder];
}


- (IBAction)goButtonPressed:(id)sender {
    NSString *fromTextContents = _fromText.text;
    NSString *toTextContents = _toField.text;
    NSString *popUpContents  = [NSString stringWithFormat:@"%s %@ %s %@", "Getting directions from", fromTextContents, "to", toTextContents];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Getting Directions"
                                                    message:popUpContents
                                                   delegate:nil
                                          cancelButtonTitle:@"Dismiss"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
