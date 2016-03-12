#import "EWSSimpleTypeHandler.h"

@interface EWSDateTimeTypeHandler : EWSSimpleTypeHandler

+ (void) initialize;

- (id)initWithClass: (Class)cls;
 
- (NSString*) construct;

- (NSString*) updateObject:(NSString*)obj withCharacters:(NSString*)s;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString*) object;

@end
