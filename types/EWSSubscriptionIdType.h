#import <Foundation/Foundation.h>

#import "EWSNonEmptyStringType.h"


/** SimpleType: SubscriptionIdType is string  */
@interface EWSSubscriptionIdType : EWSNonEmptyStringType 

/** Register a handler to parse SubscriptionIdType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

@end

