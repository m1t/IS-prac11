//
//  ViewController.m
//  IS-prac11
//
//  Created by Chida Mitsuhiro on 14/01/11.
//  Copyright (c) 2014年 Chida Mitsuhiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *myLabel;
@property (strong, nonatomic) IBOutlet UIImageView *image;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    _myLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 400, 200, 40)];
    _myLabel.text = @"iOSアプリ開発コース";
    _myLabel.textColor = [UIColor blueColor];
    
    [self.view addSubview:_myLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
    if ([_myLabel isDescendantOfView:self.view]) {
        [_myLabel removeFromSuperview];
    } else {
        [self.view addSubview:_myLabel];
    }
}

       @end
