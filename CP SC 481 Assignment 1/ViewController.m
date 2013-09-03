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

@synthesize fromText;
@synthesize toField;
@synthesize goButton;

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
    [toField becomeFirstResponder];
}

- (IBAction)doneEditingTo:(UITextField *)sender {
    [toField resignFirstResponder];
}


- (IBAction)goButtonPressed:(id)sender {
    NSString *fromTextContents = fromText.text;
    NSString *toTextContents = toField.text;
    NSString *popUpContents  = [NSString stringWithFormat:@"%s %@ %s %@", "Getting directions from", fromTextContents, "to", toTextContents];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Getting Directions"
                                                    message:popUpContents
                                                   delegate:nil
                                          cancelButtonTitle:@"Dismiss"
                                          otherButtonTitles:nil];
    [alert show];
}
- (IBAction)showInfo:(UIButton *)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Clemson University\nCPSC 481-002 Fall 2013\nAssignment 1"
                                                   message:@"This application is a non-functioning mockup for a potential mapping application. This potential application will allow individuals to input their class schedule and recieve walkgin directions to their next class.\n\nThe author would like to thank and aknowledge iconarchive.org for the use of their icons.\n\nMap icon used under the CC Attribution-Noncommercial-No Derivate 3.0 liscence from http://www.iconarchive.com/artist/wwalczyszyn.html\n\nCollegate cap icon used under the GNU Lesser General Public License from http://www.iconarchive.com/artist/oxygen-icons.org.html"
                                                  delegate:nil
                                         cancelButtonTitle:@"Dismiss"
                                         otherButtonTitles:nil];
    [alert show];
}

@end
