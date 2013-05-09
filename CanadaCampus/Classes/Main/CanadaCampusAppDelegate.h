//
//  CanadaCampusAppDelegate.h
//  CanadaCampus
//
//  Created by Maciej Kaszuba on 5/8/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "MobileAppDelegate.h"
#import "UncaughtExceptionHandlerDelegate.h"

@class CCHomeViewController;

@interface CanadaCampusAppDelegate : MobileAppDelegate <UIApplicationDelegate, UncaughtExceptionHandlerDelegate> {
    UINavigationBar *navBar;
	UINavigationController *navController;
}

@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;
@property (nonatomic, retain) IBOutlet UINavigationController *navController;

@property (nonatomic, retain) CCHomeViewController *homeViewController;

- (IBAction) infoClicked:(id) sender;
@end

