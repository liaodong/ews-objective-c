#import <Foundation/Foundation.h>




#import "../types/EWSSubscriptionStatusType.h"



/* SendNotificationResultType */
@interface EWSSendNotificationResultType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* subscriptionStatus  /* EWSSubscriptionStatusType */;


@end

