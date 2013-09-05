//
//  AppDelegate.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "AppDelegate.h"
#import "ServiceTestAssembly.h"
#import "CategoriesViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    TyphoonComponentFactory *factory = [TyphoonBlockComponentFactory factoryWithAssembly: [ServiceTestAssembly assembly]];
    [factory makeDefault];
    
    id controller = [factory componentForType: [CategoriesViewController class]];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController: controller];
    self.window.rootViewController = navController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
