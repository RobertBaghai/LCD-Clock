//
//  SevenSegmentView.m
//  LCDClock
//
//  Created by Robert Baghai on 5/16/16.
//  Copyright © 2016 Robert Baghai. All rights reserved.
//

#import "SevenSegmentView.h"

@implementation SevenSegmentView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        UIView *view = [[[NSBundle mainBundle] loadNibNamed:@"SevenSegmentView" owner:self options:nil]objectAtIndex:0];
        view.frame = self.bounds;
        view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:view];
    }
    return self;
}

- (void)handleSegmentViewsWithNumber:(int)value {
    
    switch (value) {
        case 0:
            self.segmentOne.hidden   = NO;
            self.segmentTwo.hidden   = NO;
            self.segmentThree.hidden = NO;
            self.segmentFour.hidden  = NO;
            self.segmentFive.hidden  = NO;
            self.segmentSix.hidden   = YES;
            self.segmentSeven.hidden = NO;
            break;
        case 1:
            self.segmentOne.hidden   = YES;
            self.segmentTwo.hidden   = NO;
            self.segmentThree.hidden = YES;
            self.segmentFour.hidden  = NO;
            self.segmentFive.hidden  = YES;
            self.segmentSix.hidden   = YES;
            self.segmentSeven.hidden = YES;
            break;
        case 2:
            self.segmentOne.hidden   = YES;
            self.segmentTwo.hidden   = NO;
            self.segmentThree.hidden = NO;
            self.segmentFour.hidden  = YES;
            self.segmentFive.hidden  = NO;
            self.segmentSix.hidden   = NO;
            self.segmentSeven.hidden = NO;
            break;
        case 3:
            self.segmentOne.hidden   = YES;
            self.segmentTwo.hidden   = NO;
            self.segmentThree.hidden = YES;
            self.segmentFour.hidden  = NO;
            self.segmentFive.hidden  = NO;
            self.segmentSix.hidden   = NO;
            self.segmentSeven.hidden = NO;
            break;
        case 4:
            self.segmentOne.hidden   = NO;
            self.segmentTwo.hidden   = NO;
            self.segmentThree.hidden = YES;
            self.segmentFour.hidden  = NO;
            self.segmentFive.hidden  = YES;
            self.segmentSix.hidden   = NO;
            self.segmentSeven.hidden = YES;
            break;
        case 5:
            self.segmentOne.hidden   = NO;
            self.segmentTwo.hidden   = YES;
            self.segmentThree.hidden = YES;
            self.segmentFour.hidden  = NO;
            self.segmentFive.hidden  = NO;
            self.segmentSix.hidden   = NO;
            self.segmentSeven.hidden = NO;
            break;
        case 6:
            self.segmentOne.hidden   = NO;
            self.segmentTwo.hidden   = YES;
            self.segmentThree.hidden = NO;
            self.segmentFour.hidden  = NO;
            self.segmentFive.hidden  = NO;
            self.segmentSix.hidden   = NO;
            self.segmentSeven.hidden = NO;
            break;
        case 7:
            self.segmentOne.hidden   = YES;
            self.segmentTwo.hidden   = NO;
            self.segmentThree.hidden = YES;
            self.segmentFour.hidden  = NO;
            self.segmentFive.hidden  = NO;
            self.segmentSix.hidden   = YES;
            self.segmentSeven.hidden = YES;
            break;
        case 8:
            self.segmentOne.hidden   = NO;
            self.segmentTwo.hidden   = NO;
            self.segmentThree.hidden = NO;
            self.segmentFour.hidden  = NO;
            self.segmentFive.hidden  = NO;
            self.segmentSix.hidden   = NO;
            self.segmentSeven.hidden = NO;
            break;
        case 9:
            self.segmentOne.hidden   = NO;
            self.segmentTwo.hidden   = NO;
            self.segmentThree.hidden = YES;
            self.segmentFour.hidden  = NO;
            self.segmentFive.hidden  = NO;
            self.segmentSix.hidden   = NO;
            self.segmentSeven.hidden = YES;
            break;
            
        default:
            break;
    }
}

@end
