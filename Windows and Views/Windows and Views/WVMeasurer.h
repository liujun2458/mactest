//
//  WVMeasurer.h
//  Windows and Views
//
//  Created by Archer_LJ on 13-1-9.
//  Copyright (c) 2013年 Archer_LJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WVMeasurer : NSObject
{
    IBOutlet NSWindow* applicationWindow;
    IBOutlet NSView* mainView;
    
    IBOutlet NSTextField* windowLocationTextField;
    IBOutlet NSTextField* windowSizeTextField;
    IBOutlet NSTextField* viewLocationTextField;
    IBOutlet NSTextField* viewSizeTextField;
}

- (IBAction)showMeasurements:(id)sender;
- (void)awakeFromNib;

@end
