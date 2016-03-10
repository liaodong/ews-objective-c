#import <Foundation/Foundation.h>


#import "EWSHandlerProtocol.h"


/**
 * Handles the XML parsing of the document
 */
@interface EWSHandler : NSObject <EWSHandlerProtocol>


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


/** Return the handler for the class */
+ (id<EWSHandlerProtocol>) handlerForClass: (Class) cls;
                 
@end


@interface EWSParserDelegate : NSObject <NSXMLParserDelegate>

@property (readonly) EWSParserDelegate* parent;

- (id) initWithHandler: (id<EWSHandlerProtocol>) handler andParent:(EWSParserDelegate *) parent;

- (void) parser:(NSXMLParser*)parser 
                didStartElement: (NSString *)elementName 
                namespaceURI:    (NSString *)namespaceURI 
                qualifiedName:   (NSString *)qName
                attributes:      (NSDictionary *)attributeDict;

- (void)parser:(NSXMLParser*)parser 
                foundCharacters:(NSString *)string;

- (void)parser:(NSXMLParser*)parser 
                didEndElement:   (NSString *)elementName
                namespaceURI:    (NSString *)namespaceURI 
                qualifiedName:   (NSString *)qName;

- (void) parser:(NSXMLParser *)parser
                didStartMappingPrefix:(NSString *)prefix
                toURI:                (NSString *)namespaceURI;

- (void) parser:(NSXMLParser *)parser
                didEndMappingPrefix:(NSString *)prefix;

@end



