//
//  QYViewController.m
//  QYTableViewModel
//
//  Created by 范庆宇_24961 on 11/11/2022.
//  Copyright (c) 2022 范庆宇_24961. All rights reserved.
//

#import "QYViewController.h"
#import <QYTableViewModel/QYTableViewModel.h>

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    QYBaseRow *row = [QYBaseRow createRowWithModel:@"1" cellClass:[UITableViewCell class] height:10];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
