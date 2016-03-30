#import <Foundation/Foundation.h>






/* SendNotificationResultType */
@interface MPSEWSSendNotificationResultType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSendNotificationResultType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionStatus  /* MPSEWSSubscriptionStatusType */;


@end

