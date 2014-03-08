//
//  MortgageComparision.m
//  MortagageApp
//
//  Created by Baraansoft on 05/03/14.
//  Copyright (c) 2014 Baraansoft. All rights reserved.
//

#import "MortgageComparision.h"
#import "UIColor+FlatUI.h"
#import "UITableViewCell+FlatUI.h"

@interface MortgageComparision ()
{
    NSArray *tableTitles;
    NSArray *placeHolders;
}
@property (weak, nonatomic) IBOutlet UITableView *tblView;
@end

@implementation MortgageComparision

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
    // Do any additional setup after loading the view from its nib.
    tableTitles =[[NSArray alloc]init];
    placeHolders=[[NSArray alloc]init];
}

#pragma mark -tableview

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
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
    
    UILabel *topLbl=[[UILabel alloc]initWithFrame:CGRectMake(85, 2, 150, 25)];
    topLbl.textColor=[UIColor whiteColor];
    [cell addSubview:topLbl];
    
    
    UITextField *lefttextfield=[[UITextField alloc]initWithFrame:CGRectMake(5, 27, 150, 28)];
    lefttextfield.borderStyle=UITextBorderStyleLine;
    lefttextfield.tag=indexPath.row;
    lefttextfield.delegate=self;
    //textfield.placeholder=[placeHolderArray objectAtIndex:indexPath.row];
    lefttextfield.textColor=[UIColor whiteColor];
    [cell addSubview:lefttextfield];
    
    UITextField *righttextfield=[[UITextField alloc]initWithFrame:CGRectMake(160, 27, 150, 28)];
    righttextfield.borderStyle=UITextBorderStyleLine;
    righttextfield.tag=indexPath.row;
    righttextfield.delegate=self;
    //textfield.placeholder=[placeHolderArray objectAtIndex:indexPath.row];
    righttextfield.textColor=[UIColor whiteColor];
    [cell addSubview:righttextfield];

    
    return cell;
}

#pragma mark -textfielddelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    //if (!textField.inputAccessoryView) {
    
    textField.inputAccessoryView = accessorView;
    //}
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
