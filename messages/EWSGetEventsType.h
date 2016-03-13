#import <Foundation/Foundation.h>




#import "../types/EWSSubscriptionIdType.h"
#import "../types/EWSWatermarkType.h"
#import "EWSBaseRequestType.h"



/* GetEventsType */
@interface EWSGetEventsType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* subscriptionId  /* EWSSubscriptionIdType */;
@property (retain) NSString* watermark       /* EWSWatermarkType */;


@end

