#import <Foundation/Foundation.h>






/* NotificationType */
@interface EWSNotificationType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionId     /* EWSSubscriptionIdType */;
@property (strong) NSString* previousWatermark  /* EWSWatermarkType */;
@property (strong) NSNumber* moreEvents         /* xs:boolean */;


@end

