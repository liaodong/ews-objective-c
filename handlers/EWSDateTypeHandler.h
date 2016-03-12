#import "EWSSimpleTypeHandler.h"

@interface EWSDateTypeHandler : EWSSimpleTypeHandler

- (id)initWithClass: (Class)cls;
 
- (NSString*) construct;

- (NSString*) updateObject:(NSString*)obj withCharacters:(NSString*)s;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString*) object withIndentation:(NSMutableString*) indent;

@end
