//
//  MortagagePlanningVc.h
//  MortagageApp
//
//  Created by Baraansoft on 03/03/14.
//  Copyright (c) 2014 Baraansoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MortagagePlanningVc : UIViewController<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate,UIActionSheetDelegate>
{
    NSArray *arr;
    IBOutlet UIToolbar *accessorView;
}
- (IBAction)DoneofAction:(id)sender;
@end
