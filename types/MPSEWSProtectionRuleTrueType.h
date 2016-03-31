#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ProtectionRuleTrueType is a min length string of size 0 and max length 0.*/
@interface MPSEWSProtectionRuleTrueType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ProtectionRuleTrueType */
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

