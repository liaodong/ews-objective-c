#import <Foundation/Foundation.h>


#import "EWSHandler.h"


/**
 * Handles the XML parsing of the document
 */
@interface EWSObjectTypeHandler : EWSHandler


- (id)initWithClass: (Class)cls;
- (id) initWithClass: (Class) c andContentHandlerClass:(Class) h;

- (void) property      :(NSString *) property
         isRequired    :(BOOL) required
         withNamespace :(char) ns
         withXmlTag    :(NSString*) tag
         withHandler   :(Class) cls;

- (void) property      :(NSString *) property
         isRequired    :(BOOL) required
         withAttrTag   :(NSString*) tag
         withHandler   :(Class) cls;

- (void) listProperty  :(NSString *) property
         isNonEmpty    :(BOOL) required
         useSelector   :(NSString*) method
         withNamespace :(char) ns
         withXmlTag    :(NSString*) tag
         withHandler   :(Class) cls;


- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace:(char) ns;

- (void) writeXmlInto:(NSMutableString*) buffer for:(id) object withIndentation:(NSString*) indent;

@end



