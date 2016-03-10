#import <Foundation/Foundation.h>


#import "EWSHandlerProtocol.h"

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



