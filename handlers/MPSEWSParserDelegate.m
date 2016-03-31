#import "MPSEWSParserDelegate.h"

#import "MPSEWSHandler.h"

@implementation MPSEWSParserDelegate 
{
}

- (id) initWithParent:(MPSEWSParserDelegate*) parent
{
    self = [super init];
    [self setParent:parent];

    NSLog (@"Creating an instance of MPSEWSParserDelegate = %p with parent %p", self, [self parent]);
    return self;
}

- (id) initWithHandler: (id<MPSEWSHandlerProtocol>) handler andParent:(MPSEWSParserDelegate*) parent andObjectWithAttributes:(NSDictionary *)attributeDict
{
    self = [super init];

    handler = handler ? handler : [MPSEWSHandler noop];

    [self setParent:parent];
    [self setHandler:handler];

    if (![self parent])
        [self setParent:self];

    [self setObject:[[self handler] constructWithAttributes:attributeDict]];

    NSLog (@"Creating an instance of MPSEWSParserDelegate = %p with parent %p", self, [self parent]);
    return self;
}

- (id<MPSEWSHandlerProtocol>) handlerForElementName:(NSString*) elementName namespace:(char) ns
{
    return [[self handler] handlerForElement:elementName namespace:ns];
}

- (void) populateValue:(id) value forKey: (NSString*) tag namespace:(char) ns
{
    if (value) {
        [self setObject:[[self handler] updateObject:[self object] forKey: tag namespace:ns withValue:value]];
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

    [self setDelegate:[[MPSEWSParserDelegate alloc] initWithHandler: [self handlerForElementName:elementName namespace:ns] andParent:self andObjectWithAttributes:attributeDict]];
    NSLog(@"Setting delegate %p", [self delegate]);
    [parser setDelegate:[self delegate]];
}

- (void)parser:(NSXMLParser*)parser 
                foundCharacters:(NSString *)string
{
    [self setObject: [[self handler] updateObject:[self object] withCharacters:string]];
}

- (void)parser:(NSXMLParser*)parser 
                didEndElement:   (NSString *)elementName
                namespaceURI:    (NSString *)namespaceURI
                qualifiedName:   (NSString *)qName
{
    char ns = 'x';
    ns = [namespaceURI hasSuffix:@"types"]    ? 't' : ns;
    ns = [namespaceURI hasSuffix:@"messages"] ? 'm' : ns;

    [[self parent] populateValue:[self object] forKey:elementName namespace:ns];
    NSLog(@"Setting delegate as parent %p of %p", [self parent], self);
    [parser setDelegate:[self parent]];
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


