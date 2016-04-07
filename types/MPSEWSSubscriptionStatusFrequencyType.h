#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: SubscriptionStatusFrequencyType is a int between [1, 1440] */
@interface MPSEWSSubscriptionStatusFrequencyType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse SubscriptionStatusFrequencyType */
+ (void) initialize;
+ (BOOL) isValid: (NSNumber *) val forVersion:(MPSEWSExchangeVersion) ver;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSNumber *) updateObject:(NSNumber *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSNumber *) object;

@end

