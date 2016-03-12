#import "EWSSimpleTypeHandler.h"

@interface EWSShortTypeHandler : EWSSimpleTypeHandler

+ (void) initialize;

- (id)initWithClass: (Class)cls;
 
- (NSNumber*) construct;

- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object;

@end
