#import <Foundation/Foundation.h>




#import "EWSSubscriptionIdType.h"
#import "EWSWatermarkType.h"
#import "../handlers/EWSBooleanTypeHandler.h"



/* NotificationType */
@interface EWSNotificationType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* subscriptionId     /* EWSSubscriptionIdType */;
@property (retain) NSString* previousWatermark  /* EWSWatermarkType */;
@property (retain) NSNumber* moreEvents         /* xs:boolean */;


@end

