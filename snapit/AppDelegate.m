//
//  AppDelegate.m
//  snapit
//
//  Created by lineker on 2015-04-22.
//  Copyright (c) 2015 Tomazeli.net. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize queryResults, window, currentWindowViewController;

int i=0;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    //listen for screenshots
    query = [[NSMetadataQuery alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(queryUpdated:) name:NSMetadataQueryDidStartGatheringNotification object:query];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(queryUpdated:) name:NSMetadataQueryDidUpdateNotification object:query];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(queryUpdated:) name:NSMetadataQueryDidFinishGatheringNotification object:query];
    
    [query setDelegate:self];
    [query setPredicate:[NSPredicate predicateWithFormat:@"kMDItemIsScreenCapture = 1"]];
    [query startQuery];

    
    
    //Initialize Status Item
    myStatusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength];
    
    NSImage *statusImage = [NSImage imageNamed:@"logo.png"];
    [myStatusItem setImage:statusImage];
    [myStatusItem setHighlightMode:YES];
    
    [myStatusItem setMenu:myStatusMenu];
    
    [myMenuStatusItem setTitle:NSLocalizedString(@"Special Status", @"status menu item text")];
    
    
    
}

- (void)applicationWillTerminate:(NSNotification *)notification {
    [query stopQuery];
    [query setDelegate:nil];
    query = nil;
    
    [self setQueryResults:nil];
}

- (void)queryUpdated:(NSNotification *)note {
    NSLog(@"%@", [query results]);
    if(i > 1) {
        
        currentWindowViewController = [[NSWindowController alloc] initWithWindowNibName:@"SnapitWindow"];
        [currentWindowViewController showWindow:self];
        
    }
    i++;
    [self setQueryResults:[query results]];
}

@end
