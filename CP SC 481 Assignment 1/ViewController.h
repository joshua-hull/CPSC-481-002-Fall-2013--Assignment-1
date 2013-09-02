//
//  ViewController.h
//  CP SC 481 Assignment 1
//
//  Created by Joshua Hull on 9/1/13.
//  Copyright (c) 2013 Joshua Hull. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *toField;
@property (weak, nonatomic) IBOutlet UITextField *fromText;
@property (weak, nonatomic) IBOutlet UIButton *goButton;

@end
