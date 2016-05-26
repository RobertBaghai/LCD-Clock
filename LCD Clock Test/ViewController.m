//
//  ViewController.m
//  LCD Clock Test
//
//  Created by Robert Baghai on 11/13/15.
//  Copyright © 2015 Robert Baghai. All rights reserved.
//

#import "ViewController.h"
#import "SevenSegmentView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet SevenSegmentView *digitOne;
@property (weak, nonatomic) IBOutlet SevenSegmentView *digitTwo;
@property (weak, nonatomic) IBOutlet SevenSegmentView *digitThree;
@property (weak, nonatomic) IBOutlet SevenSegmentView *digitFour;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateTime];
    [self colonBlinking];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (int)parseTimeFormatWithIndex:(int)index {
    NSString *hourInterval = [self.dateFormat stringFromDate:[NSDate date]];
    NSString *timeString   = [NSString stringWithFormat:@"%c",[hourInterval characterAtIndex:index]];
    NSNumber *number       = [self.numberFormat numberFromString:timeString];
    return number.intValue;
}

- (void)updateTime {
    self.dateFormat            = [[NSDateFormatter alloc] init];
    self.numberFormat          = [[NSNumberFormatter alloc] init];
    self.dateFormat.dateFormat = [NSString stringWithFormat:@"hh:mm:ss"];
    self.hours                 = [self.dateFormat stringFromDate:[NSDate date]];
    //NSLog(@"%@",self.hours);
    
    [self.digitOne handleSegmentViewsWithNumber:[self parseTimeFormatWithIndex:0]];
    [self.digitTwo handleSegmentViewsWithNumber:[self parseTimeFormatWithIndex:1]];
    [self.digitThree handleSegmentViewsWithNumber:[self parseTimeFormatWithIndex:3]];
    [self.digitFour handleSegmentViewsWithNumber:[self parseTimeFormatWithIndex:4]];

    NSString *hourInterval = [self.dateFormat stringFromDate:[NSDate date]];
    NSString *fifthCharacterS = [NSString stringWithFormat:@"%c",[hourInterval characterAtIndex:6]];
    self.label.text = fifthCharacterS;
    NSString *sixthCharacterS = [NSString stringWithFormat:@"%c",[hourInterval characterAtIndex:7]];
    self.labelTwo.text = sixthCharacterS;
    [NSTimer scheduledTimerWithTimeInterval:1.0f
                                     target:self
                                   selector:@selector(updateTime)
                                   userInfo:nil
                                    repeats:NO];
}

- (void) colonBlinking {
    if (self.topView.hidden == YES && self.bottomView.hidden == YES) {
        self.topView.hidden    = NO;
        self.bottomView.hidden = NO;
    } else {
        self.topView.hidden    = YES;
        self.bottomView.hidden = YES;
    }
    
    //blink twice per second
    [NSTimer scheduledTimerWithTimeInterval:0.5f
                                     target:self
                                   selector:@selector(colonBlinking)
                                   userInfo:nil
                                    repeats:NO];
}

@end
