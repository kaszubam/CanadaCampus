//
//  main.m
//  CanadaCampus
//
//  Created by Maciej Kaszuba on 5/8/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanadaCampusAppDelegate.h"

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([CanadaCampusAppDelegate class]));
    [pool release];
    return retVal;
}
