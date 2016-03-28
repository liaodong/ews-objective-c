#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ExcludesAttributeType is a regex ((0x|0X)[0-9A-Fa-f]*)|([0-9]*) string */
@interface MPSEWSExcludesAttributeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ExcludesAttributeType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Construct the object */
- (NSString *) construct;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;

@end

