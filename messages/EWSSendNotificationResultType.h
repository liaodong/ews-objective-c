#import <Foundation/Foundation.h>






/* SendNotificationResultType */
@interface EWSSendNotificationResultType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionStatus  /* EWSSubscriptionStatusType */;


@end

