//
//  AppDelegate.h
//  parseFilebyDict
//
//  Created by Bin Yin on 14-6-11.
//  Copyright (c) 2014年 Bin Yin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *txtDisplay;

@property (assign) IBOutlet NSWindow *window;

- (IBAction)btParse:(id)sender;

@end
