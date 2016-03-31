#import <Foundation/Foundation.h>


#import "MPSEWSHandlerProtocol.h"

/**
 * Handles the XML parsing of the document
 */
@interface MPSEWSHandler : NSObject <MPSEWSHandlerProtocol>

+ (void) initialize;

+ (MPSEWSHandler*) noop;

- (id) initWithClass: (Class)cls;

- (Class) cls;

- (id) constructWithAttributes: (NSDictionary *)attributes;

- (id) updateObject:(id)obj withCharacters:(NSString*)s;

- (id) updateObject:(id)obj forKey:(NSString*)tag namespace:(char)ns withValue:(id)v;

- (id<MPSEWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace:(char) ns;

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent;

- (void) register;

/** Return the handler for the class */
+ (id<MPSEWSHandlerProtocol>) handlerForClass: (Class) cls;
                 
@end



