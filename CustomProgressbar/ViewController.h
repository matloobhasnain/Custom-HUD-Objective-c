//
//  ViewController.h
//  CustomProgressbar
//
//  Created by APPLE on 11/25/16.
//  Copyright © 2016 Matloob. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface ViewController : UIViewController
@property (nonatomic,strong) MBProgressHUD *HUD;
@property (weak, nonatomic) IBOutlet UIView *view_Show_Hud;
- (IBAction)showHUD:(id)sender;
- (IBAction)removeHUD:(id)sender;

@end

