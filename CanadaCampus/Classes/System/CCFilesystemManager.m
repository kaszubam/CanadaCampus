//
//  CCFilesystemManager.m
//  CanadaCampus
//
//  Created by Maciej Kaszuba on 5/9/13.
//
//

#import "CCFilesystemManager.h"
#import "CCSystemInfo.h"

@implementation CCFilesystemManager
+ (CCFilesystemManager *)instance {
    
    static dispatch_once_t onceToken;
    static CCFilesystemManager *instance;
    
    dispatch_once(&onceToken, ^{
        instance = [[CCFilesystemManager alloc] init];
    });
    
    return instance;
}

+ (NSString *)xibFileNameForClass:(Class)classN {
    NSString *className = NSStringFromClass(classN);
    NSString* postfix = @"_iPhone";
    
    if ([CCSystemInfo isScreenBig])
    {
        postfix = @"_iPad";
    }
    
    Class childClass = NSClassFromString(className);
    assert(childClass);
    
    NSString* xibName = [className stringByAppendingString:postfix];
    
    if ([[NSBundle mainBundle] pathForResource:xibName ofType:@"nib"] == nil)
    {
        //NSLog(@"Xib: %@", xibName);
        xibName = className;
        assert([[NSBundle mainBundle] pathForResource:xibName ofType:@"nib"]);
    }
    return xibName;
}

@end
