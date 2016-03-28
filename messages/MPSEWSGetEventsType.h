#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"






/* GetEventsType */
@interface MPSEWSGetEventsType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionId  /* MPSEWSSubscriptionIdType */;
@property (strong) NSString* watermark       /* MPSEWSWatermarkType */;


@end

