#import "EWSParserDelegate.h"


@implementation EWSParserDelegate 
{
    id<EWSHandlerProtocol> _handler;
    id                     _object;
}

- (id) initWithHandler: (id<EWSHandlerProtocol>) handler andParent:(EWSParserDelegate *) parent
{
    self = [super init];

    _parent  = parent;
    _handler = handler;

    if (!_parent) {
        _parent = self;
    }
    return self;
}

- (void) populateValue:(id) value forKey: (NSString*) tag
{
    _object = [_handler updateObject:_object forKey: tag withValue:value];
}

- (void) parser:(NSXMLParser*)parser 
                didStartElement: (NSString *)elementName 
                namespaceURI:    (NSString *)namespaceURI
                qualifiedName:   (NSString *)qName
                attributes:      (NSDictionary *)attributeDict
{
    EWSParserDelegate* delegate = [[EWSParserDelegate alloc] initWithHandler: [_handler handlerForElement:elementName] andParent:self];
    [parser setDelegate:delegate];

    _object = [_handler constructWithAttributes:attributeDict];
}

- (void)parser:(NSXMLParser*)parser 
                foundCharacters:(NSString *)string
{
    _object = [_handler updateObject:_object withCharacters:string];
}

- (void)parser:(NSXMLParser*)parser 
                didEndElement:   (NSString *)elementName
                namespaceURI:    (NSString *)namespaceURI
                qualifiedName:   (NSString *)qName
{
    [_parent populateValue:_object forKey:elementName];
    [parser setDelegate:_parent];
}

- (void) parser:(NSXMLParser *)parser
                didStartMappingPrefix:(NSString *)prefix
                toURI:                (NSString *)namespaceURI
{
}

- (void) parser:(NSXMLParser *)parser
                didEndMappingPrefix:(NSString *)prefix
{
}

@end


