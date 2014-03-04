//
//  ViewController.m
//  MortagageApp
//
//  Created by Baraansoft on 03/03/14.
//  Copyright (c) 2014 Baraansoft. All rights reserved.
//

#import "ViewController.h"
#import "MortagagePlanningVc.h"
#import "FUIButton.h"
#import "UIColor+FlatUI.h"
#import "UIFont+FlatUI.h"
@import CoreText;
@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        //added some shit  jhgvjhgv
        
        //dumbies
    }
    return self;
}

- (void)viewDidLoad
{
    for (FUIButton *flatButton in _homeButtons) {
        
        flatButton.buttonColor = [UIColor turquoiseColor];
        flatButton.shadowColor = [UIColor greenSeaColor];
        flatButton.shadowHeight = 3.0f;
        flatButton.cornerRadius = 6.0f;
        flatButton.titleLabel.font = [UIFont boldFlatFontOfSize:16];
        [flatButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
        [flatButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];

    }
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SelectFromMenu:(id)sender {
    
    UIButton *button=(UIButton *)sender;
    if (button.tag==1) {
        MortagagePlanningVc *mvc=[[MortagagePlanningVc alloc]initWithNibName:@"MortagagePlanningVc" bundle:nil];
        [self.navigationController pushViewController:mvc animated:NO];
        
    }
}
@end
