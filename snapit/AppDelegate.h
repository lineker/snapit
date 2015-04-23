//
//  AppDelegate.h
//  snapit
//
//  Created by lineker on 2015-04-22.
//  Copyright (c) 2015 Tomazeli.net. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    
    NSStatusItem *myStatusItem;
    IBOutlet NSMenu *myStatusMenu;
    IBOutlet NSMenuItem *myMenuStatusItem;
    
}

@property (assign) IBOutlet NSWindow *window;

@property (assign) NSMenu *theMenu;
@property (retain) NSStatusItem *theItem;

@end
