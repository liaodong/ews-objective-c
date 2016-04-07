#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* SendNotificationResultType */
@interface MPSEWSSendNotificationResultType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSendNotificationResultType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionStatus  /* MPSEWSSubscriptionStatusType */;


@end

