//
//  KeychainUtils.h
//  keychain-test-1
//
//  Created by Michal Karwanski on 4/14/10.
//

#import <Foundation/Foundation.h>
#import "KeychainUserData.h"

@interface KeychainUtils : NSObject {

}

+ (KeychainUserData *) getUserDataForServiceName: (NSString *) serviceName error: (NSError **) error;
+ (NSInteger) storeUserData: (KeychainUserData *) userData forServiceName: (NSString *)serviceName error: (NSError **)error;

@end
