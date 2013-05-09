//
//  CanadaCampusAppDelegate.m
//  CanadaCampus
//
//  Created by Maciej Kaszuba on 5/8/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import "CanadaCampusAppDelegate.h"
#import "CCSystemInfo.h"
#import "CCHomeViewController.h"
#import "ConfigurationUtil.h"
#import "AboutViewController.h"
#import "UIColor-Expanded.h"
#import "ADMS_Measurement.h"

@implementation CanadaCampusAppDelegate

@synthesize navBar;
@synthesize navController;
@synthesize homeViewController;
#pragma mark -
#pragma mark Main Entry Point to perform application specific logic

- (void) performAppMainLogic{
	[super performAppMainLogic];
	
    NSMutableString *storyboardName = [[NSMutableString alloc] initWithString:@"MainStoryboard"];
    if([CCSystemInfo isScreenBig]) {
        [storyboardName appendFormat:@"_iPad"];
    } else {
        [storyboardName appendFormat:@"_iPhone"];
    }
    
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    
    self.navController = (UINavigationController *)[storyboard instantiateViewControllerWithIdentifier:@"MainNavigationViewController"];
    
    [self.window setRootViewController:self.navController];
	
	//TODO:Define page view and section name according to the needs of your application
	[UsageTracking pageViewed:@"Application Home" section:nil];
	
	//TODO:Add your application specific main logic here
    //[self.navController pushViewController:self.homeViewController animated:YES];
     
}

- (void) performWorkWhenConnected {
	//[super performWorkWhenConnected];
	
	//TODO: If offline support is enabled, add your own code here to perform additional work with the internet connection is detected. 
}

#pragma mark -
#pragma mark Login View methods

//INFO:You can override this method to return your custom LoginViewController

//- (UIViewController<LoginViewProtocol> *)applicationsLoginViewController {
//  return [[[CustomLoginViewController alloc] initWithNibName:@"CustomLoginViewController" bundle:nil] autorelease];
//}

#pragma mark -
#pragma mark Common application life cycle
- (void)applicationDidFinishLaunching:(UIApplication *)application {
    //[super initSettings];
	[self performAppMainLogic];
	//Setup Omniture
	NSString *env = [ConfigurationUtil getKeyFromInfoList:@"env"];
	
	if ([env isEqualToString:@"PRD"]){
		//TODO:WORK with Genentech to get the actual account
		self.tracking.reportSuiteIDs = @"geneXXXX,geneinternal";
		[self.tracking setProp:10 toValue:self.tracking.reportSuiteIDs];
	}
	
	//Setup Nav Bar tint color
	self.navBar.tintColor = [UIColor colorWithHexString:DEFAULT_TINT_COLOR];
	
	[window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application
{
	[super cleanup];
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
	return YES;
}

- (void)dealloc {
	[navBar release];
	[navController release];
    [homeViewController release];
	[super dealloc];
}

- (IBAction) infoClicked:(id) sender {
	AboutViewController *aboutView =  [[AboutViewController alloc] initWithNibName:nil bundle:nil];
	[self.navController pushViewController:aboutView animated:YES];
	[aboutView release];
}

@end
