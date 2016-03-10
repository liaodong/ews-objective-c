#import "EWSHandler.h"


@implementation EWSParserDelegate 
{
    EWSHandler* _handler;
}

- (id) initWithHandler: (EWSHandler *) handler andParent:(EWSParserDelegate *) parent
{
    self = [super init];

    _parent  = parent;
    _handler = handler;

    if (!_parent) {
        _parent = self;
    }
    return self;
}


- (void) parser:(NSXMLParser*)parser 
                didStartElement: (NSString *)elementName 
                namespaceURI:    (NSString *)namespaceURI
                qualifiedName:   (NSString *)qName
                attributes:      (NSDictionary *)attributeDict
{
    EWSParserDelegate* delegate = [[EWSParserDelegate alloc] initWithHandler: [handler handlerForElement:elementName] andParent:self];
    [parser setDelegate:delegate];
}

- (void)parser:(NSXMLParser*)parser 
                foundCharacters:(NSString *)string
{
}

- (void)parser:(NSXMLParser*)parser 
                didEndElement:   (NSString *)elementName
                namespaceURI:    (NSString *)namespaceURI
                qualifiedName:   (NSString *)qName
{
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


@interface EWSHandlerValue : NSObject

@property (retain) NSString* prop;
@property (retain) Class     cls;
@property (retain) NSString* sel;

- (id) initProperty:(NSString*) property withHandlerKey: (Class) cls;
- (id) initProperty:(NSString*) property withHandlerKey: (Class) cls withSelector: (NSString*) sel;
@end

@implementation EWSHandlerValue
- (id) initProperty:(NSString*) property withHandlerKey: (Class)cls
{
    self = [super init];
    [self setProp: property];
    [self setCls:  cls];

    return self;
}

- (id) initProperty:(NSString*) property withHandlerKey: (Class)cls withSelector: (NSString*) sel
{
    self = [super init];

    [self setProp: property];
    [self setCls:  cls];
    [self setSel:  sel];

    return self;
}

@end


@implementation EWSHandler
{
    NSMutableDictionary* handlers;
}

static NSMutableDictionary* _handlers = nil;

+ (void) initialize
{
    if (_handlers == nil) {
        _handlers = [[NSMutableDictionary alloc] initWithCapacity: 1024];
    }
}

+ (NSMutableDictionary*) handlers
{
    [self initialize];
    return _handlers;
}

- (id) initWithClass: (Class) cls
{
    self = [super init];

    handlers  = [[NSMutableDictionary alloc] initWithCapacity: 32];
    return self;
}

- (void) property:(NSString *) property
                hasXmlElementTag    : (NSString*) tag
                withDelegateClassKey: (Class) cls
{
    [handlers setObject:[[EWSHandlerValue alloc] initProperty: property withHandlerKey: cls] forKey:tag];
}

/**
 * The serialization/deserialization of property.
 * Use the selector instead of property setter to set/add the value.
 */
- (void) property:(NSString *) property
                hasXmlElementTag    :  (NSString*) tag
                withDelegateClassKey: (Class) cls
                useSelector         : (NSString *) sel
{
    [handlers setObject:[[EWSHandlerValue alloc] initProperty: property withHandlerKey: cls withSelector:sel] forKey:tag];
}


- (EWSHandler*) handlerForElement: (NSString *) tag
{
    return [handlers objectForKey: tag];
}



+ (EWSHandler*) handlerForClass: (Class) cls
{
    NSMutableDictionary* handlers = [self handlers];
    if (![handlers objectForKey: cls]) {
        [handlers setObject:[[EWSHandler alloc] initWithClass: cls] forKey: [cls className]];

        [cls initialize];
    }
    return [[self handlers] objectForKey: [cls className]];
}

@end

