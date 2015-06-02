//
//  ViewController.h
//  WashApp
//
//  Created by Alex on 13.06.14.
//  Copyright (c) 2014 Krilex Innovation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//Page One
@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (weak, nonatomic) IBOutlet UILabel *helpLabel;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;



//Step One
@property (weak, nonatomic) IBOutlet UILabel *stepOneLabel;
@property (weak, nonatomic) IBOutlet UILabel *lightLabel;
@property (weak, nonatomic) IBOutlet UILabel *coloredLabel;
@property (weak, nonatomic) IBOutlet UILabel *darkLabel;

//Step Two
@property (weak, nonatomic) IBOutlet UILabel *stepTwoLabel;
@property (weak, nonatomic) IBOutlet UILabel *cottonlabel;
@property (weak, nonatomic) IBOutlet UILabel *delicatesLabel;
@property (weak, nonatomic) IBOutlet UILabel *woolLabel;




//Step Three
@property (weak, nonatomic) IBOutlet UILabel *stepThreeLabel;
@property (weak, nonatomic) IBOutlet UILabel *dirtyOneLabel;
@property (weak, nonatomic) IBOutlet UILabel *dirtyTwoLabel;

@property (weak, nonatomic) IBOutlet UIDatePicker *timerpicker;

@property (weak, nonatomic) IBOutlet UILabel *finalLabel;

//Help-Screen
@property (weak, nonatomic) IBOutlet UIButton *helpLine1Label;
@property (weak, nonatomic) IBOutlet UIButton *helpLine2Label;

@end
