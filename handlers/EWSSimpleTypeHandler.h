#import "EWSHandler.h"


/** 
 * These are handlers that are constructed using withCharacters data
 */
@interface EWSSimpleTypeHandler : EWSHandler

- (id)initWithClass: (Class)cls;
 
- (id) construct;

- (id) constructWithAttributes: (NSDictionary *)attributes;
 
- (id) updateObject:(id)obj withCharacters:(NSString*)s;
 
- (id) updateObject:(id)obj forKey:(NSString*)tag withValue:(id)v;
 
- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentationDepth:(int) depth;
 
- (BOOL) isInline;

@end
