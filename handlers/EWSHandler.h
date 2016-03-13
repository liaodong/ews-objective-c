#import <Foundation/Foundation.h>


#import "EWSHandlerProtocol.h"

/**
 * Handles the XML parsing of the document
 */
@interface EWSHandler : NSObject <EWSHandlerProtocol>

+ (void) initialize;

+ (EWSHandler*) noop;

- (id) initWithClass: (Class)cls;

- (id) constructWithAttributes: (NSDictionary *)attributes;

- (id) updateObject:(id)obj withCharacters:(NSString*)s;

- (id) updateObject:(id)obj forKey:(NSString*)tag namespace:(char)ns withValue:(id)v;

- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace:(char) ns;

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent;

- (void) register;

/** Return the handler for the class */
+ (id<EWSHandlerProtocol>) handlerForClass: (Class) cls;
                 
@end



