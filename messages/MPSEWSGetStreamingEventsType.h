#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfSubscriptionIdsType;



/* GetStreamingEventsType */
@interface MPSEWSGetStreamingEventsType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetStreamingEventsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSNonEmptyArrayOfSubscriptionIdsType* subscriptionIds;
@property (strong) NSNumber*                                 connectionTimeout  /* MPSEWSStreamingSubscriptionConnectionTimeoutType */;


@end

