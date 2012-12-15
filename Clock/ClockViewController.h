//
//  ClockViewController.h
//  Clock
//
//  Created by Peter Tram on 14/12/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ClockViewController : UIView
{
    NSTimer *timer;
    
}
- (void) time;


@end
