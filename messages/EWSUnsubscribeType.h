#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"






/* UnsubscribeType */
@interface EWSUnsubscribeType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionId  /* EWSSubscriptionIdType */;


@end

