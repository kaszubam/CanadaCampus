//
//  KeyValuePair.h
//

#import <Foundation/Foundation.h>


@interface KeyValuePair : NSObject
{
	NSObject *_key;
	NSString *_value;
	NSString *_detail;
	BOOL	_custom;
}

@property (nonatomic, retain) NSObject *key;
@property (nonatomic, retain) NSString *value;
@property (nonatomic, retain) NSString *detail;
@property (nonatomic) BOOL custom;

- (id)initWithKey:(NSObject *)key value:(NSString *)value;
+ (id)pairWithKey:(NSObject *)key value:(NSString *)value;
- (id)initWithKey:(NSObject *)key value:(NSString *)value custom:(BOOL) custom;
+ (id)pairWithKey:(NSObject *)key value:(NSString *)value custom:(BOOL) custom;
- (id)initWithKey:(NSObject *)key value:(NSString *)value detail:(NSString *)detail;
+ (id)pairWithKey:(NSObject *)key value:(NSString *)value detail:(NSString *)detail;
- (id)initWithKey:(NSObject *)key value:(NSString *)value detail:(NSString *)detail custom:(BOOL) custom;
+ (id)pairWithKey:(NSObject *)key value:(NSString *)value detail:(NSString *)detail custom:(BOOL) custom;

@end
