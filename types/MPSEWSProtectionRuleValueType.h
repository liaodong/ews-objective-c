#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ProtectionRuleValueType is a min length string of size 1 and max length +inf.*/
@interface MPSEWSProtectionRuleValueType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ProtectionRuleValueType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*) val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;

@end

