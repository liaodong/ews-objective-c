#import <Foundation/Foundation.h>


#import "EWSHandler.h"


/**
 * Handles the XML parsing of the document
 */
@interface EWSArrayTypeHandler : EWSHandler


- (id)initWithClass: (Class)cls;

- (void) elementName :(NSString *) element
         withNamespace: (char) ns
         withHandler:(Class) cls;

- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace:(char) ns;

- (void) writeXmlInto:(NSMutableString*) buffer for:(NSArray*) object withIndentation:(NSString*) indent;

@end



