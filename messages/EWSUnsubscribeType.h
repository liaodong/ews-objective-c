#import <Foundation/Foundation.h>




#import "../types/EWSSubscriptionIdType.h"
#import "EWSBaseRequestType.h"



/* UnsubscribeType */
@interface EWSUnsubscribeType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* subscriptionId  /* EWSSubscriptionIdType */;


@end

