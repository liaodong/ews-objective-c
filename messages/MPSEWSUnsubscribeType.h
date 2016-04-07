#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"






/* UnsubscribeType */
@interface MPSEWSUnsubscribeType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUnsubscribeType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionId  /* MPSEWSSubscriptionIdType */;


@end

