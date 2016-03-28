#import <Foundation/Foundation.h>






/* SendNotificationResultType */
@interface MPSEWSSendNotificationResultType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionStatus  /* MPSEWSSubscriptionStatusType */;


@end

