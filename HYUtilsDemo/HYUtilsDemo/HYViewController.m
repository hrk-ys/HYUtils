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
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation HYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.isIOS7Label.text = [UIDevice isIOS7] ? @"YES" : @"NO";
    
    self.imageView.image = [UIImage imageWithColor:[UIColor redColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
