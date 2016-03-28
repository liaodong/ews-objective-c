#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: SubscriptionStatusType can be one of the following:
 *       1 OK
 *       2 Unsubscribe
 */
@interface MPSEWSSubscriptionStatusType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse SubscriptionStatusType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) OK;
+ (NSString *) Unsubscribe;
@end

