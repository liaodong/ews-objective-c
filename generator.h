#import <Foundation/Foundation.h>

@interface Element : NSObject
{
    NSMutableArray* children;
}

- (id) initWithParent:(Element*) parent andName:(NSString*)name;

@property (strong) NSString* tagName;
@property (assign) Element*  parent;

@property (strong) NSString* abstract;
@property (strong) NSString* base;
@property (strong) NSString* elementFormDefault;
@property (strong) NSString* fixed;
@property (strong) NSString* id;
@property (strong) NSString* itemType;
@property (strong) NSString* maxOccurs;
@property (strong) NSString* memberTypes;
@property (strong) NSString* minOccurs;
@property (strong) NSString* mixed;
@property (strong) NSString* name;
@property (strong) NSString* namespace;
@property (strong) NSString* nillable;
@property (strong) NSString* ref;
@property (strong) NSString* substitutionGroup;
@property (strong) NSString* targetNamespace;
@property (strong) NSString* type;
@property (strong) NSString* use;
@property (strong) NSString* value;
@property (strong) NSString* version;
@property (strong) NSString* resultType;

- (NSArray*) children;
@end

@interface Generator  : NSObject <NSXMLParserDelegate>

- (id) initWithFile:(NSString*) filename;

- (void)parser:(NSXMLParser*)parser didStartElement:(NSString*)elementName namespaceURI:(NSString*)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict;

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string;

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName;

- (void) parser:(NSXMLParser *)parser didStartMappingPrefix:(NSString *)prefix toURI:(NSString *)namespaceURI;
- (void) parser:(NSXMLParser *)parser didEndMappingPrefix:(NSString *)prefix;

- (void) parse;
- (void) generate;

@end


