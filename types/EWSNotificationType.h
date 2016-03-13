#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSSubscriptionIdType.h"
#import "../types/EWSWatermarkType.h"



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

