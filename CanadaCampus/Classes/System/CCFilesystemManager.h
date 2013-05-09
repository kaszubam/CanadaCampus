//
//  CCFilesystemManager.h
//  CanadaCampus
//
//  Created by Maciej Kaszuba on 5/9/13.
//
//

#import <Foundation/Foundation.h>

@interface CCFilesystemManager : NSObject
+ (CCFilesystemManager *)instance;

+ (NSString *)xibFileNameForClass:(Class)classN;

@end
