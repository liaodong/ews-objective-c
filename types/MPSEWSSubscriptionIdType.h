#import <Foundation/Foundation.h>

#import "MPSEWSNonEmptyStringType.h"


/** SimpleType: SubscriptionIdType is string  */
@interface MPSEWSSubscriptionIdType : MPSEWSNonEmptyStringType 

/** Register a handler to parse SubscriptionIdType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

@end

