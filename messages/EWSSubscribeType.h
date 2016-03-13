#import <Foundation/Foundation.h>




#import "../types/EWSPullSubscriptionRequestType.h"
#import "../types/EWSPushSubscriptionRequestType.h"
#import "EWSBaseRequestType.h"



/* SubscribeType */
@interface EWSSubscribeType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSPullSubscriptionRequestType* pullSubscriptionRequest;
@property (retain) EWSPushSubscriptionRequestType* pushSubscriptionRequest;


@end

