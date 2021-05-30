//
//  AppDelegate.m
//  Lesson8
//
//  Created by macbook on 26.05.2021.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSLog(@"Не запущено");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"Не активно");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"Активно");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"Перехожу в бэкграунд");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"Перехожу в форграунд");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"Закрыто пользователем");
}


@end
