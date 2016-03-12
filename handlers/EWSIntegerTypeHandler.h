#import "EWSSimpleTypeHandler.h"

@interface EWSIntegerTypeHandler : EWSSimpleTypeHandler

- (id)initWithClass: (Class)cls;
 
- (NSNumber*) construct;

- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent;

@end
