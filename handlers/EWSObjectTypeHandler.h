#import <Foundation/Foundation.h>


#import "EWSHandler.h"


/**
 * Handles the XML parsing of the document
 */
@interface EWSObjectTypeHandler : EWSHandler


- (id)initWithClass: (Class)cls;

/**
 * The serialization/deserialization of property.
 */ 
- (void) property:(NSString *) property
                hasXmlElementTag    : (NSString*) tag
                withDelegateClassKey: (Class) cls;

/**
 * The serialization/deserialization of property.
 * Use the selector instead of property setter to set/add the value.
 */ 
- (void) property:(NSString *) property
                hasXmlElementTag    :  (NSString*) tag
                withDelegateClassKey: (Class) cls
                useSelector         : (NSString *) sel;

- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag;

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentationDepth:(int) depth;

- (BOOL) isInline;

@end



