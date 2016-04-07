#import <Foundation/Foundation.h>

#import "MPSEWSParserDelegate.h"

@interface MPSEWSResponse : NSObject
{}

- (id) init;
- (NSString*) description;

@property id header;
@property id body;

@end

@interface MPSEWSDocumentHandler : MPSEWSParserDelegate
{
}

+ (void) initialize;

+ (MPSEWSResponse*) toObj:(NSString*) xml;
+ (void) toXml:(id)obj buffer:(NSMutableString*)buffer;


- (id<MPSEWSHandlerProtocol>) handlerForElementName:(NSString*) elementName namespace:(char)ns;

- (void) populateValue:(id) value forKey: (NSString*) tag namespace:(char) ns;


- (MPSEWSResponse*) result;


- (void) parser:(NSXMLParser*)parser
                didStartElement: (NSString *)elementName
                namespaceURI:    (NSString *)namespaceURI
                qualifiedName:   (NSString *)qName
                attributes:      (NSDictionary *)attributeDict;


- (void)parser:(NSXMLParser*)parser
                didEndElement:   (NSString *)elementName
                namespaceURI:    (NSString *)namespaceURI
                qualifiedName:   (NSString *)qName;

@end
