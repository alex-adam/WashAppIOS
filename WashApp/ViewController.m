//
//  ViewController.m
//  WashApp
//
//  Created by Alex on 13.06.14.
//  Copyright (c) 2014 Krilex Innovation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end


@implementation ViewController
@synthesize welcomeLabel;
@synthesize helpLabel;
@synthesize timerLabel;

//Step One
@synthesize stepOneLabel;
@synthesize lightLabel;
@synthesize coloredLabel;
@synthesize darkLabel;

//Step Two
@synthesize stepTwoLabel;
@synthesize cottonlabel;
@synthesize delicatesLabel;
@synthesize woolLabel;

//Step Three
@synthesize stepThreeLabel;
@synthesize dirtyOneLabel;
@synthesize dirtyTwoLabel;

@synthesize finalLabel;

//Help-Screen
@synthesize helpLine1Label;
@synthesize helpLine2Label;

@synthesize timerpicker;
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]



- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    //SetUp Custom Font
    UIFont *headline = [UIFont fontWithName:@"Amatic SC" size:72.0];
    UIFont *content = [UIFont fontWithName:@"Amatic SC" size:28.0];
    
    [welcomeLabel setFont:headline];
    [helpLabel setFont:headline];
    [timerLabel setFont:headline];
    
    [stepOneLabel setFont:headline];
    [lightLabel setFont:content];
    [coloredLabel setFont:content];
    [darkLabel setFont:content];
    
    [stepTwoLabel setFont:headline];
    [cottonlabel setFont:content];
    [delicatesLabel setFont:content];
    [woolLabel setFont:content];
    
    [stepThreeLabel setFont:headline];
    [dirtyOneLabel setFont:content];
    [dirtyTwoLabel setFont:content];
    
    [finalLabel setFont:headline];
    
    [helpLine1Label setFont:content];
    [helpLine2Label setFont:content];
    
       
     [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Amatic" size:21],NSFontAttributeName, nil]]; //StatusBar Font
    [self.navigationController.navigationBar setBarTintColor:UIColorFromRGB(0x21a1cf)]; //Hintergrundfarbe NavigationBar
   
    
    
    UITabBarController *tabBarController = (UITabBarController *)self.tabBarController;
    UITabBar *tabBar = tabBarController.tabBar;

    //get tab-bar item w.r.t their index
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    [tabBarItem1 setImage:[[UIImage imageNamed:@"tb_guide_inaktiv.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    //[tabBarItem1 setSelectedImage:[[UIImage imageNamed:@"tb_guide.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    [tabBarItem2 setImage:[[UIImage imageNamed:@"tb_symbols_inaktiv.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    //[tabBarItem2 setSelectedImage:[[UIImage imageNamed:@"tb_symbols.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
  
    UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
    [tabBarItem3 setImage:[[UIImage imageNamed:@"tb_timer_inaktiv.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    //[tabBarItem3 setSelectedImage:[[UIImage imageNamed:@"tb_timer.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
  
    UITabBarItem *tabBarItem4 = [tabBar.items objectAtIndex:3];
    [tabBarItem4 setImage:[[UIImage imageNamed:@"tb_help_inaktiv.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
   // [tabBarItem4 setSelectedImage:[[UIImage imageNamed:@"tb_help.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    
    //Setzt die Statusbar auf weiß
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    
    
    //Gradient Background
    [self setBackgroundGradient:self.view color1Red:36.0 color1Green:170.0 color1Blue:220.0 color2Red:19.0 color2Green:168.0 color2Blue:158.0 alpha:1.0];
    [self.tabBarController.tabBar setBarTintColor:UIColorFromRGB(0x00A7A3)];
    

    self.tabBarController.tabBar.clipsToBounds = YES; //Removes border
    [self.tabBarController.tabBar setSelectedImageTintColor:UIColorFromRGB(0xFFFFFF)];
    
    //Text des Back-Buttons ist immer "Back"
   self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];  }


- (void)setBackgroundGradient:(UIView *)mainView color1Red:(float)colorR1 color1Green:(float)colorG1 color1Blue:(float)colorB1 color2Red:(float)colorR2 color2Green:(float)colorG2 color2Blue:(float)colorB2 alpha:(float)alpha
    {
        
        [mainView setBackgroundColor:[UIColor clearColor]];
        CAGradientLayer *grad = [CAGradientLayer layer];
        grad.frame = mainView.bounds;
        
        grad.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:colorR1/255.0 green:colorG1/255.0 blue:colorB1/255.0 alpha:alpha] CGColor], (id)[[UIColor colorWithRed:colorR2/255.0 green:colorG2/255.0 blue:colorB2/255.0 alpha:alpha] CGColor], nil];
        
        [mainView.layer insertSublayer:grad atIndex:0];
    }

//Setzt die Statusbar bei den anderen Screens auf weiß
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
                    
                    
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)StepOneButton:(id)sender {
}
@end
