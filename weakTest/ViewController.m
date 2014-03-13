//
//  ViewController.m
//  weakTest
//
//  Created by Igor Tomych on 10/03/14.
//  Copyright (c) 2014 itomych studio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (copy, nonatomic) NSString* textValue;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doAction:(id)sender {
    self.textValue = self.textField.text;
    [self logAction:nil];
    
    
//    self.textValue = nil;
}

- (IBAction)cleanAction:(id)sender {
    self.textField.text = nil;
    self.textValue = nil;
}

- (IBAction)logAction:(id)sender {
    
    NSLog(@"%@", self.textValue);
}


@end
