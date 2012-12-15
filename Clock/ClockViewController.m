//
//  ClockViewController.m
//  Clock
//
//  Created by Peter Tram on 14/12/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//

#import "ClockViewController.h"

@implementation ClockViewController

- (void) time
{
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}


float Degrees2Radians(float degrees)
{
    return degrees * M_PI / 180;
}


- (void) updateClock:(NSTimer *)theTimer{
	
	NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:(NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit) fromDate:[NSDate date]];
	
    //Variables for clock
    NSInteger seconds = [dateComponents second];
	NSInteger minutes = [dateComponents minute];
	NSInteger hours = [dateComponents hour];
	
	if (hours > 12)
    {
        hours -=12; //Set to PM after reaching 12 
    }
    
	//Variable which holds the calculated position of the hour, min, and sec hand
	CGFloat secPos = Degrees2Radians(seconds/60.0*360);
	CGFloat minPos = Degrees2Radians(minutes/60.0*360);
	CGFloat hourPos = Degrees2Radians(hours/12.0*360) + minPos/12.0;
	
}

- (void)drawRect:(CGRect)rect
{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1.0); //Line color: black
    
    //Draw a circle for clock face
    CGContextStrokeEllipseInRect(context, CGRectMake(self.center.x/2-20, self.center.y/2, 200.0, 200.0));

    
}



@end
