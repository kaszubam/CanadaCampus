//
//  CCSystemInfo.m
//  CanadaCampus
//
//  Created by Maciej Kaszuba on 5/9/13.
//
//

#import "CCSystemInfo.h"

@implementation CCSystemInfo
+ (BOOL)isScreenBig {
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
}
@end
