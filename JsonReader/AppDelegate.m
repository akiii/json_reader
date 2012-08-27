//
//  AppDelegate.m
//  JsonReader
//
//  Created by Akifumi on 2012/08/27.
//  Copyright (c) 2012年 Akifumi. All rights reserved.
//

#import "AppDelegate.h"
#import "AFJsonReader.h"

@implementation AppDelegate

@synthesize window;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
//    NSDictionary *jsonDic = [AFJsonReader requestWithUrl:@"https://graph.facebook.com/19292868552"];
//    NSLog(@"jsonDic : %@", jsonDic);
    
    [AFJsonReader requestWithUrl:@"https://graph.facebook.com/19292868552" block:^(NSDictionary *jsonDic){
        NSLog(@"============== Json Data Start ===============");
        NSLog(@"%@", jsonDic);
        NSLog(@"============== Json Data End ===============");
        
        NSLog(@"============== Example ===============");
        NSLog(@"username : %@", [jsonDic objectForKey:@"username"]);
        NSLog(@"============== Example ===============");
    }];
    
    return YES;
}

@end
