//
//  HYViewController.m
//  HYUtilsDemo
//
//  Created by Hiroki Yoshifuji on 2013/09/23.
//  Copyright (c) 2013年 Hiroki Yoshifuji. All rights reserved.
//

#import "HYViewController.h"

@interface HYViewController ()
@property (weak, nonatomic) IBOutlet UILabel *isIOS7Label;

@end

@implementation HYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.isIOS7Label.text = [UIDevice isIOS7] ? @"YES" : @"NO";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
