#import <Foundation/Foundation.h>


#import "MPSEWSHandlerProtocol.h"

@interface MPSEWSParserDelegate : NSObject <NSXMLParserDelegate>

@property MPSEWSParserDelegate*     parent;
@property MPSEWSParserDelegate*     delegate;
@property id<MPSEWSHandlerProtocol> handler;
@property id                        object;


- (id) initWithParent: (MPSEWSParserDelegate*) parent;
- (id) initWithHandler: (id<MPSEWSHandlerProtocol>) handler andParent:(MPSEWSParserDelegate*) parent andObjectWithAttributes:(NSDictionary *)attributeDict;

- (id<MPSEWSHandlerProtocol>) handlerForElementName:(NSString*) element namespace:(char) ns;

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



