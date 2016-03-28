#import <Foundation/Foundation.h>


#import "MPSEWSHandler.h"


/**
 * Handles the XML parsing of the document
 */
@interface MPSEWSArrayTypeHandler : MPSEWSHandler


- (id)initWithClass: (Class)cls;

- (void) elementName :(NSString *) element
         withNamespace: (char) ns
         withHandler:(Class) cls;

- (id<MPSEWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace:(char) ns;

- (void) writeXmlInto:(NSMutableString*) buffer for:(NSArray*) object withIndentation:(NSString*) indent;

@end



