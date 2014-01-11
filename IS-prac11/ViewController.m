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
@property (strong, nonatomic) IBOutlet UILabel *coloredLabel;

- (IBAction)switchChanged:(UISwitch *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    _myLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 400, 200, 40)];
    _myLabel.text = @"iOSアプリ開発コース";
    _myLabel.textAlignment = NSTextAlignmentCenter;
    _myLabel.textColor = [UIColor blueColor];
    _myLabel.backgroundColor = [UIColor yellowColor];
    
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

    if (_coloredLabel.textColor == [UIColor blackColor]) {
        _coloredLabel.textColor = [UIColor whiteColor];
    } else if(_coloredLabel.textColor == [UIColor whiteColor]) {
        _coloredLabel.textColor = [UIColor blueColor];
    } else if(_coloredLabel.textColor == [UIColor blueColor]) {
        _coloredLabel.textColor = [UIColor redColor];
    } else if(_coloredLabel.textColor == [UIColor redColor]) {
        _coloredLabel.textColor = [UIColor magentaColor];
    } else if(_coloredLabel.textColor == [UIColor magentaColor]) {
        _coloredLabel.textColor = [UIColor greenColor];
    } else if(_coloredLabel.textColor == [UIColor greenColor]) {
        _coloredLabel.textColor = [UIColor cyanColor];
    } else if(_coloredLabel.textColor == [UIColor cyanColor]) {
        _coloredLabel.textColor = [UIColor yellowColor];
    } else {
        _coloredLabel.textColor = [UIColor blackColor];
    }
}
- (IBAction)switchChanged:(UISwitch *)sender {
    _image.hidden = ! (sender.on);
}
       @end
