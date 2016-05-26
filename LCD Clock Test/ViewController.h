//
//  ViewController.h
//  LCD Clock Test
//
//  Created by Robert Baghai on 11/13/15.
//  Copyright © 2015 Robert Baghai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

#pragma mark - UI
@property (weak, nonatomic) IBOutlet UILabel  *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel  *label;
@property (weak, nonatomic) IBOutlet UIView   *topView;
@property (weak, nonatomic) IBOutlet UIView   *bottomView;

#pragma mark - Data & Number Formatters
@property (strong, nonatomic) NSDateFormatter   *dateFormat;
@property (strong, nonatomic) NSNumberFormatter *numberFormat;
@property (strong, nonatomic) NSString          *hours;

@end

