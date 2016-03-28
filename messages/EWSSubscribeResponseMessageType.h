#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"






/* SubscribeResponseMessageType */
@interface EWSSubscribeResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionId  /* EWSSubscriptionIdType */;
@property (strong) NSString* watermark       /* EWSWatermarkType */;


@end

