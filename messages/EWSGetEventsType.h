#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"






/* GetEventsType */
@interface EWSGetEventsType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionId  /* EWSSubscriptionIdType */;
@property (strong) NSString* watermark       /* EWSWatermarkType */;


@end

