//
//  ViewController.m
//  Clock
//
//  Created by Peter Tran on 13/12/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//

#import "ViewController.h"
#import "ClockViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imageClockFace = _imageClockFace;

- (void) updateTimer
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm:ss"];
    
    //Displays the clock on label (Digital)
    labelTimer.text = [formatter stringFromDate: [NSDate date]];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Updates the clock every 0.5
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    
    _imageClockFace.image = [UIImage imageNamed:@"ClockFace.png"];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [self setImageClockFace:nil];

    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
