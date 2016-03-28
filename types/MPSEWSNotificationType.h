#import <Foundation/Foundation.h>






/* NotificationType */
@interface MPSEWSNotificationType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionId     /* MPSEWSSubscriptionIdType */;
@property (strong) NSString* previousWatermark  /* MPSEWSWatermarkType */;
@property (strong) NSNumber* moreEvents         /* xs:boolean */;


@end

