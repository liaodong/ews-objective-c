#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSPullSubscriptionRequestType;
@class MPSEWSPushSubscriptionRequestType;
@class MPSEWSStreamingSubscriptionRequestType;



/* SubscribeType */
@interface MPSEWSSubscribeType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSubscribeType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPullSubscriptionRequestType*      pullSubscriptionRequest;
@property (strong) MPSEWSPushSubscriptionRequestType*      pushSubscriptionRequest;
@property (strong) MPSEWSStreamingSubscriptionRequestType* streamingSubscriptionRequest;


@end

