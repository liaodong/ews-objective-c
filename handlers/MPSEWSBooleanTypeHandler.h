#import "MPSEWSSimpleTypeHandler.h"

@interface MPSEWSBooleanTypeHandler : MPSEWSSimpleTypeHandler

+ (void) initialize;

- (id)initWithClass: (Class)cls;
 
- (NSNumber*) constructWithAttributes: (NSDictionary*) attributeDict;
- (NSNumber*) construct;

- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object;

@end
