//
//  AppDelegate.m
//  snapit
//
//  Created by lineker on 2015-04-22.
//  Copyright (c) 2015 Tomazeli.net. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize theItem, theMenu;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    //Initialize Status Item
    myStatusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength];
    
    NSImage *statusImage = [NSImage imageNamed:@"logo.png"];
    [myStatusItem setImage:statusImage];
    [myStatusItem setHighlightMode:YES];
    
    [myStatusItem setMenu:myStatusMenu];
    
    [myMenuStatusItem setTitle:NSLocalizedString(@"Special Status", @"status menu item text")];

}

- (void)activateStatusMenu
{
    NSStatusBar *bar = [NSStatusBar systemStatusBar];
    
    theItem = [bar statusItemWithLength:NSVariableStatusItemLength];
    //[theItem retain];
    
    [theItem setTitle: NSLocalizedString(@"Tablet",@"")];
    [theItem setHighlightMode:YES];
    [theItem setMenu:theMenu];
}

@end
