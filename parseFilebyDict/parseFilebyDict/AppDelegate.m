//
//  AppDelegate.m
//  parseFilebyDict
//
//  Created by Bin Yin on 14-6-11.
//  Copyright (c) 2014年 Bin Yin. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application[self.txtDisplay setStringValue:@"2332423"];

}


- (IBAction)btParse:(id)sender {
    //[self.txtDisplay setStringValue:@"2332423"];
    
    NSString * lancode = [[NSLocale preferredLanguages] objectAtIndex:0];//get language code
    [self.txtDisplay setStringValue:lancode];//display the locale in main UI
    
    NSString *path = [[NSBundle mainBundle]
                      pathForResource:@"Localiable"
                      ofType:@"strings"
                      inDirectory:nil
                      forLocalization:lancode];// get the file "Localizable.strings" in mainBundle with language code
    
    NSDictionary *d = [NSDictionary dictionaryWithContentsOfFile:path];//create a dictionary in that path
    NSString *content = [d objectForKey:@"str3"];//search key "str3" in the dictionary
    if(content==nil)
    {
        NSLog(@"cannot find");
    }
    else
    {
        NSLog(content);//display the content by log got from dictionary
    }

}
@end
