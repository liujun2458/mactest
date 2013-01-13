//
//  WVShapesView.m
//  Windows and Views
//
//  Created by Archer_LJ on 13-1-10.
//  Copyright (c) 2013年 Archer_LJ. All rights reserved.
//

#import "WVShapesView.h"

@implementation WVShapesView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
    NSRect viewBounds = [self bounds];
    
    NSColor* currentColor = [NSColor redColor];
    //[currentColor set];
    
    objc_msgSend(currentColor, @selector(set));
    
    //NSRectFill(viewBounds);
    
    NSFrameRect(viewBounds);
    
    NSRect squareRect = NSMakeRect(15, 15, 130, 56);
    
    currentColor = [NSColor lightGrayColor];
    
    [currentColor set];
    NSRectFill(squareRect);
    
    NSRect ovalRect = NSInsetRect(squareRect, 40.0, 40.0);
    NSBezierPath* ovalPath = [NSBezierPath bezierPathWithOvalInRect:ovalRect];
    
    currentColor = [NSColor purpleColor];
    [currentColor set];
    [ovalPath fill];
    
    
    
    
    
    
    
}

@end
