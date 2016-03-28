#import "MPSEWSSimpleTypeHandler.h"

@interface MPSEWSStringTypeHandler : MPSEWSSimpleTypeHandler

+ (void) initialize;

- (id)initWithClass: (Class)cls;
 
- (NSString*) construct;

- (NSString*) updateObject:(NSString*)obj withCharacters:(NSString*)s;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object;

@end
