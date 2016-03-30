#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"






/* SubscribeResponseMessageType */
@interface MPSEWSSubscribeResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSubscribeResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionId  /* MPSEWSSubscriptionIdType */;
@property (strong) NSString* watermark       /* MPSEWSWatermarkType */;


@end

