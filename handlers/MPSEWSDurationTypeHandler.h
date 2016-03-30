#import "MPSEWSSimpleTypeHandler.h"

@interface MPSEWSDurationTypeHandler : MPSEWSSimpleTypeHandler

+ (void) initialize;
+ (BOOL) isValid:(NSString*) val;

- (id)initWithClass: (Class)cls;
 
- (NSString*) construct;

- (NSString*) updateObject:(NSString*)obj withCharacters:(NSString*)s;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString*) object;

@end
