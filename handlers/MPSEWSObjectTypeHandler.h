#import <Foundation/Foundation.h>


#import "MPSEWSHandler.h"


/**
 * Handles the XML parsing of the document
 */
@interface MPSEWSObjectTypeHandler : MPSEWSHandler


- (id)initWithClass: (Class)cls;
- (id) initWithClass: (Class) c andContentHandlerClass:(Class) h;

- (void) property      :(NSString *) property
         withNamespace :(char) ns
         withXmlTag    :(NSString*) tag
         withHandler   :(Class) cls;

- (void) property      :(NSString *) property
         withAttrTag   :(NSString*) tag
         withHandler   :(Class) cls;

- (void) listProperty  :(NSString *) property
         useSelector   :(NSString*) method
         withNamespace :(char) ns
         withXmlTag    :(NSString*) tag
         withHandler   :(Class) cls;


- (id<MPSEWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace:(char) ns;

- (void) writeXmlInto:(NSMutableString*) buffer for:(id) object withTag:(NSString*) tag;

@end



