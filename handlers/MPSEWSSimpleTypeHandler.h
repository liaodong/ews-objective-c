#import "MPSEWSHandler.h"


/** 
 * These are handlers that are constructed using withCharacters data
 */
@interface MPSEWSSimpleTypeHandler : MPSEWSHandler

- (id)initWithClass: (Class)cls;
 
- (id) construct;

- (id) constructWithAttributes: (NSDictionary *)attributes;
 
- (id) updateObject:(id)obj withCharacters:(NSString*)s;
 
- (id) updateObject:(id)obj forKey:(NSString*)tag namespace:(char)ns withValue:(id)v;
 
- (id<MPSEWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace: (char) ns;
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object;

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent;

@end
