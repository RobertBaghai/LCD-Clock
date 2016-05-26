//
//  SevenSegmentView.h
//  LCDClock
//
//  Created by Robert Baghai on 5/16/16.
//  Copyright © 2016 Robert Baghai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SevenSegmentView : UIView

#pragma mark - UI
@property (weak, nonatomic) IBOutlet UIView *segmentOne;
@property (weak, nonatomic) IBOutlet UIView *segmentTwo;
@property (weak, nonatomic) IBOutlet UIView *segmentThree;
@property (weak, nonatomic) IBOutlet UIView *segmentFour;
@property (weak, nonatomic) IBOutlet UIView *segmentFive;
@property (weak, nonatomic) IBOutlet UIView *segmentSix;
@property (weak, nonatomic) IBOutlet UIView *segmentSeven;

- (void)handleSegmentViewsWithNumber:(int)value;

@end
