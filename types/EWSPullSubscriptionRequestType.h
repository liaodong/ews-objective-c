#import <Foundation/Foundation.h>




#import "EWSSubscriptionTimeoutType.h"
#import "EWSBaseSubscriptionRequestType.h"



/* PullSubscriptionRequestType */
@interface EWSPullSubscriptionRequestType : EWSBaseSubscriptionRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* timeout  /* EWSSubscriptionTimeoutType */;


@end

