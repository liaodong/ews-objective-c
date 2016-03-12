#import "EWSSimpleTypeHandler.h"

@interface EWSStringTypeHandler : EWSSimpleTypeHandler

- (id)initWithClass: (Class)cls;
 
- (NSString*) construct;

- (NSString*) updateObject:(NSString*)obj withCharacters:(NSString*)s;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent;

@end
