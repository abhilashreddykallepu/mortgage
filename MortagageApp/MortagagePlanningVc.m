//
//  MortagagePlanningVc.m
//  MortagageApp
//
//  Created by Baraansoft on 03/03/14.
//  Copyright (c) 2014 Baraansoft. All rights reserved.
//

#import "MortagagePlanningVc.h"
#import "UIColor+FlatUI.h"
#import "UITableViewCell+FlatUI.h"

@interface MortagagePlanningVc ()
{
    NSArray *placeHolderArray;
}
@end

@implementation MortagagePlanningVc

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
    placeHolderArray=@[@"$ 25000",@"12 years",@"9.69%",@"Monthly"];
    // Do any additional setup after loading the view from its nib.
    //self.navigationController.navigationBar.translucent = NO;
    arr=[[NSArray alloc]initWithObjects:@"Mortgage Amount:",@"Amortization:",@"Interest:",@"Payment Frequency",nil];
}

#pragma mark -tableViewDatasource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section==0) {
        return arr.count;
    }else{
        return 2;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [UITableViewCell configureFlatCellWithColor:[UIColor greenSeaColor] selectedColor:[UIColor cloudsColor] reuseIdentifier:CellIdentifier inTableView:(UITableView *)tableView];
    
    if (cell == nil) {
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        [cell configureFlatCellWithColor:[UIColor greenSeaColor] selectedColor:[UIColor asbestosColor]];
        cell.cornerRadius = 10.f; //Optional
        cell.separatorHeight = 1.0f; // optional
        
    }
    
    if (indexPath.section==0) {
        
        UILabel *idexLabel=[[UILabel alloc]initWithFrame:CGRectMake(3, 6, 150, 30)];
        [idexLabel setText:[arr objectAtIndex:indexPath.row]];
        [idexLabel setTextColor:[UIColor whiteColor]];
        [idexLabel setTextAlignment:NSTextAlignmentLeft];
        [cell addSubview:idexLabel];
        
        
        UITextField *textfield=[[UITextField alloc]initWithFrame:CGRectMake(200, 6, 100, 30)];
        textfield.borderStyle=UITextBorderStyleLine;
        textfield.tag=indexPath.row+1;
        textfield.placeholder=[placeHolderArray objectAtIndex:indexPath.row];
        textfield.textColor=[UIColor whiteColor];
        [cell addSubview:textfield];
        if (indexPath.row==1||indexPath.row==3) {
            [textfield setUserInteractionEnabled:NO];
        }
    }else if (indexPath.section==1){
        
        cell.textLabel.textColor=[UIColor whiteColor];
        cell.textLabel.font=[UIFont boldSystemFontOfSize:14.0];
        if (indexPath.row==0) {
            cell.textLabel.text=@"Payment";
        }else{
            cell.textLabel.text=@"Schedule";
        }
    }
    
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    return [textField resignFirstResponder];
}

@end
