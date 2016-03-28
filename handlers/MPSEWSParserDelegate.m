#import "MPSEWSParserDelegate.h"

#import "MPSEWSHandler.h"

@implementation MPSEWSParserDelegate 
{
    id<MPSEWSHandlerProtocol> _handler;
    id                     _object;
}

- (id) initWithParent:(MPSEWSParserDelegate*) parent
{
    self = [super init];
    _parent = parent;
    return self;
}

- (id) initWithHandler: (id<MPSEWSHandlerProtocol>) handler andParent:(MPSEWSParserDelegate*) parent andObjectWithAttributes:(NSDictionary *)attributeDict
{
    self = [super init];

    _parent  = parent;
    _handler = handler ? handler : [MPSEWSHandler noop];

    if (!_parent) {
        _parent = self;
    }
    _object = [_handler constructWithAttributes:attributeDict];

    return self;
}

- (id<MPSEWSHandlerProtocol>) handlerForElementName:(NSString*) elementName namespace:(char) ns
{
    return [_handler handlerForElement:elementName namespace:ns];
}

- (void) populateValue:(id) value forKey: (NSString*) tag namespace:(char) ns
{
    if (value) {
        _object = [_handler updateObject:_object forKey: tag namespace:ns withValue:value];
    }
    else NSLog(@"value is null");
}

- (void) parser:(NSXMLParser*)parser 
                didStartElement: (NSString *)elementName 
                namespaceURI:    (NSString *)namespaceURI
                qualifiedName:   (NSString *)qName
                attributes:      (NSDictionary *)attributeDict
{
    char ns = 'x';
    ns = [namespaceURI hasSuffix:@"types"]    ? 't' : ns;
    ns = [namespaceURI hasSuffix:@"messages"] ? 'm' : ns;

    NSLog(@"begin %@ %@ %@", elementName, namespaceURI, qName);

    MPSEWSParserDelegate* delegate = [[MPSEWSParserDelegate alloc] initWithHandler: [self handlerForElementName:elementName namespace:ns] andParent:self andObjectWithAttributes:attributeDict];
    [parser setDelegate:delegate];
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
    char ns = 'x';
    ns = [namespaceURI hasSuffix:@"types"]    ? 't' : ns;
    ns = [namespaceURI hasSuffix:@"messages"] ? 'm' : ns;

    [_parent populateValue:_object forKey:elementName namespace:ns];
    [parser setDelegate:_parent];
    [self release];
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


