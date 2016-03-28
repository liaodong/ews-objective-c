#import <Foundation/Foundation.h>
#import "EWSBaseSubscriptionRequestType.h"






/* PullSubscriptionRequestType */
@interface EWSPullSubscriptionRequestType : EWSBaseSubscriptionRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* timeout  /* EWSSubscriptionTimeoutType */;


@end

