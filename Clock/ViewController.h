//
//  ViewController.h
//  Clock
//
//  Created by Peter Tran on 13/12/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClockViewController.h"

@interface ViewController : UIViewController
{
    IBOutlet UILabel *labelTimer;
    NSTimer *timer;
    
    
}
- (void) updateTimer;

@property (strong, nonatomic) IBOutlet UIImageView *imageClockFace;

@end
