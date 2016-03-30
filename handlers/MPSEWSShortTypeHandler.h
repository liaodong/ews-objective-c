#import "MPSEWSSimpleTypeHandler.h"

@interface MPSEWSShortTypeHandler : MPSEWSSimpleTypeHandler

+ (void) initialize;
+ (BOOL) isValid:(NSNumber*) val;

- (id)initWithClass: (Class)cls;
 
- (NSNumber*) construct;

- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object;

@end
