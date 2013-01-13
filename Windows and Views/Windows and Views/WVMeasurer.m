//
//  WVMeasurer.m
//  Windows and Views
//
//  Created by Archer_LJ on 13-1-9.
//  Copyright (c) 2013年 Archer_LJ. All rights reserved.
//

#import "WVMeasurer.h"

@implementation WVMeasurer

- (IBAction)showMeasurements:(id)sender
{
    NSRect windowFrame = applicationWindow.frame;
    
    NSPoint windowLocation = windowFrame.origin;
    NSSize windowSize = windowFrame.size;
    
    
    [windowLocationTextField setStringValue:NSStringFromPoint(windowLocation)];
    [windowSizeTextField setStringValue:NSStringFromSize(windowSize)];

    NSRect viewFrame = mainView.frame;
    
    NSPoint viewLocation = viewFrame.origin;
    NSSize viewSize = viewFrame.size;
    
    [viewLocationTextField setStringValue:NSStringFromPoint(viewLocation)];
    [viewSizeTextField setStringValue:NSStringFromSize(viewSize)];
}

- (void)awakeFromNib
{
    NSNotificationCenter* center = [NSNotificationCenter defaultCenter];
    
    [center addObserver:self
               selector:@selector(windowDidResize:)
                   name:NSWindowDidResizeNotification
                 object:applicationWindow];
 /*
    [center addObserver:self
               selector:@selector(receivedNotification)
                   name:nil
                 object:nil];
   */ 
}

- (void)receivedNotification:(NSNotification* )notification
{
    NSLog(@"Notification:%@", notification);
}

@end