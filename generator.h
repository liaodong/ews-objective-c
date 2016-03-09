#import <Foundation/Foundation.h>

@interface Element : NSObject
{
    NSMutableArray* children;
}

+ (id) init;

@property (assign) Element* parent;

@end

@interface Generator  : NSObject <NSXMLParserDelegate>

- (id) initWithFile:(NSString*) filename;

- (void)parser:(NSXMLParser*)parser didStartElement:(NSString*)elementName namespaceURI:(NSString*)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict;

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string;

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName;

- (void) parser:(NSXMLParser *)parser didStartMappingPrefix:(NSString *)prefix toURI:(NSString *)namespaceURI;
- (void) parser:(NSXMLParser *)parser didEndMappingPrefix:(NSString *)prefix;

- (void) parse;
@end


