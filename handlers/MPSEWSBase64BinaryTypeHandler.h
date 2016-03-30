#import "MPSEWSSimpleTypeHandler.h"

@interface MPSEWSBase64BinaryTypeHandler : MPSEWSSimpleTypeHandler

+ (void) initialize;
+ (BOOL) isValid:(NSData*) val;

- (id)initWithClass: (Class)cls;
 
- (NSString*) construct;

- (NSString*) updateObject:(NSString*)obj withCharacters:(NSString*)s;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString*) object;

@end
