//
//  ViewController.h
//  MortagageApp
//
//  Created by Baraansoft on 03/03/14.
//  Copyright (c) 2014 Baraansoft. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FUIButton;
@interface ViewController : UIViewController{
    
}
@property (strong, nonatomic) IBOutletCollection(FUIButton) NSArray *homeButtons;

- (IBAction)SelectFromMenu:(id)sender;
@end
