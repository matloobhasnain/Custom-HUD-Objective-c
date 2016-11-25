//
//  ViewController.m
//  CustomProgressbar
//
//  Created by APPLE on 11/25/16.
//  Copyright © 2016 Matloob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self showHUD:nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showHUD:(id)sender
{
    [self removeHUD:nil];
   
    self.HUD = [[MBProgressHUD alloc] initWithView:self.view_Show_Hud];
    self.HUD.backgroundColor = [UIColor clearColor];
    
    
    UIView * view_Custome = [[UIView alloc]init];
    view_Custome.frame = CGRectMake(0, 0, 100, 80);
    
    UIImageView *img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"gear_2"]];
    img.frame = CGRectMake((view_Custome.frame.size.width/2)-(35),0 , 70, 70);
    
    UIImageView *img1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"gear_5"]];
    img1.frame = CGRectMake(img.frame.origin.x-18, 50, 30, 30);
    
    UIImageView *img2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"gear_6"]];
    img2.frame = CGRectMake(img.frame.origin.x+55, 50, 30, 30);
    
    
    
    
    
    CABasicAnimation *rotation;
    rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotation.fromValue = [NSNumber numberWithFloat:0];
    rotation.toValue = [NSNumber numberWithFloat:(2*M_PI)];
    rotation.duration = 3.1; // Speed
    rotation.repeatCount = HUGE_VALF; // Repeat forever. Can be a finite number.
    [img.layer addAnimation:rotation forKey:@"Spin"];
    
    
    CABasicAnimation *rotation1;
    rotation1 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotation1.fromValue = [NSNumber numberWithFloat:(2*M_PI)];
    rotation1.toValue = [NSNumber numberWithFloat:0];
    rotation1.duration = 3.1; // Speed
    rotation1.repeatCount = HUGE_VALF; // Repeat forever. Can be a finite number.
    [img1.layer addAnimation:rotation1 forKey:@"Spin"];
    
    CABasicAnimation *rotation2;
    rotation2 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotation2.fromValue = [NSNumber numberWithFloat:(2*M_PI)];
    rotation2.toValue = [NSNumber numberWithFloat:0];
    rotation2.duration = 3.1; // Speed
    rotation2.repeatCount = HUGE_VALF; // Repeat forever. Can be a finite number.
    [img2.layer addAnimation:rotation2 forKey:@"Spin"];
    
    [view_Custome addSubview:img];
    [view_Custome addSubview:img1];
    [view_Custome addSubview:img2];
    
    
    self.HUD.mode = MBProgressHUDModeCustomView;
    self.HUD.customView = view_Custome;
    self.HUD.customView.backgroundColor = [UIColor clearColor];
    [self.view_Show_Hud addSubview:self.HUD];
    //[window setUserInteractionEnabled:NO];
    //self.HUD.labelText = @"Loading";
    //self.HUD.detailsLabelText = @"Please wait";
    [self.HUD show:YES];
}
- (IBAction)removeHUD:(id)sender
{
    
    [self.HUD hide:YES];
    [self.HUD removeFromSuperview];
}


@end
