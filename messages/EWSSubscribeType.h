#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSPullSubscriptionRequestType;
@class EWSPushSubscriptionRequestType;



/* SubscribeType */
@interface EWSSubscribeType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSPullSubscriptionRequestType* pullSubscriptionRequest;
@property (strong) EWSPushSubscriptionRequestType* pushSubscriptionRequest;


@end

