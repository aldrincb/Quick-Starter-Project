//
//  LogInViewController.m
//  Quick Starter Project
//
//  Created by Aldrin Balisi on 9/18/14.
//  Copyright (c) 2014 Aldrin Balisi. All rights reserved.
//

#import "LogInViewController.h"

#define PADDING 14.0
#define FACEBOOK_BUTTON_HEIGHT 44.0

@interface LogInViewController ()

@end

@implementation LogInViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.logInView.logo = nil;
    
    [self.logInView.facebookButton setBackgroundImage:nil forState:UIControlStateNormal];
    [self.logInView.facebookButton setBackgroundImage:nil forState:UIControlStateHighlighted];
    [self.logInView.facebookButton setImage:nil forState:UIControlStateNormal];
    [self.logInView.facebookButton setImage:nil forState:UIControlStateHighlighted];
    self.logInView.facebookButton.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.3];
    self.logInView.facebookButton.titleLabel.font = [UIFont systemFontOfSize:17.0];
    [self.logInView.facebookButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.logInView.facebookButton setTitleShadowColor:[UIColor clearColor] forState:UIControlStateNormal];
    [self.logInView.facebookButton setTitle:NSLocalizedString(@"Login with Facebook", nil) forState:UIControlStateNormal];
    
    self.logInView.facebookButton.layer.borderColor = [[UIColor whiteColor] CGColor];
    self.logInView.facebookButton.layer.borderWidth = 1.0;
    self.logInView.facebookButton.layer.cornerRadius = 10.0;
}

- (void)viewWillLayoutSubviews
{
    self.logInView.facebookButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *viewsDictionary = @{@"facebookButton":self.logInView.facebookButton};
    NSString *v1 = [NSString stringWithFormat:@"V:[facebookButton(==%2$f)]-(%1$f)-|", PADDING, FACEBOOK_BUTTON_HEIGHT];
    NSString *h1 = [NSString stringWithFormat:@"H:|-(%1$f)-[facebookButton]-(%1$f)-|", PADDING];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:v1 options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:h1 options:0 metrics:nil views:viewsDictionary]];
}

@end
