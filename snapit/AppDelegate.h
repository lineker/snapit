//
//  AppDelegate.h
//  snapit
//
//  Created by lineker on 2015-04-22.
//  Copyright (c) 2015 Tomazeli.net. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate,NSMetadataQueryDelegate> {
    
    NSStatusItem *myStatusItem;
    IBOutlet NSMenu *myStatusMenu;
    IBOutlet NSMenuItem *myMenuStatusItem;
    NSMetadataQuery *query;
    
}

@property (assign) IBOutlet NSWindow *window;
@property (retain) NSWindowController *currentWindowViewController;
@property (nonatomic, copy) NSArray *queryResults;
@end
