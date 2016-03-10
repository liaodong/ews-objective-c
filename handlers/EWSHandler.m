#import "EWSHandler.h"


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


@interface EWSHandlerValue : NSObject

@property (retain) NSString* prop;
@property (retain) Class     cls;
@property (retain) NSString* sel;

- (SEL) selector;

- (id) initProperty:(NSString*) property withHandlerKey: (Class) cls;
- (id) initProperty:(NSString*) property withHandlerKey: (Class) cls withSelector: (NSString*) sel;
@end

@implementation EWSHandlerValue
{
    SEL selector;
}
- (id) initProperty:(NSString*) property withHandlerKey: (Class)cls
{
    self = [super init];

    [self setProp: property];
    [self setCls:  cls];

    selector = nil;

    return self;
}

- (id) initProperty:(NSString*) property withHandlerKey: (Class)cls withSelector: (NSString*) sel
{
    self = [super init];

    [self setProp: property];
    [self setCls:  cls];
    [self setSel:  sel];

    selector = nil;

    return self;
}
- (SEL) selector
{
    if (!selector) {
        selector = NSSelectorFromString([self sel]);
    }
    return selector;
}

@end


@implementation EWSHandler
{
    Class cls;
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

- (id) initWithClass: (Class) c
{
    self = [super init];

    cls = c;
    handlers  = [[NSMutableDictionary alloc] initWithCapacity: 32];

    [_handlers setObject:self forKey: [cls className]];
    return self;
}

- (id) constructWithAttributes: (NSDictionary *)attributes
{
    id v = [[cls alloc] init];
    for (NSString* key in attributes)
    {
      [self updateObject:v forKey:key withValue:[attributes objectForKey:key]];
    }
    return v;
}

- (id) updateObject:(id)obj forKey:(NSString*)tag withValue:(id)v
{
    EWSHandlerValue* h = [handlers objectForKey:tag];

    if ([h sel]) {
        [obj performSelector: [h selector] withObject:v];
    }
    else {
        [obj setValue:v forKey:[h prop]];
    }
    return obj;
}

- (id) updateObject:(id)obj withCharacters:(NSString*) s
{
    return obj;
}

- (void) property:(NSString *) property
                hasXmlElementTag    : (NSString*) tag
                withDelegateClassKey: (Class) c
{
    [handlers setObject:[[EWSHandlerValue alloc] initProperty: property withHandlerKey: c] forKey:tag];
}
- (void) property:(NSString *) property
                hasXmlElementTag    :  (NSString*) tag
                withDelegateClassKey: (Class) c
                useSelector         : (NSString *) sel
{
    [handlers setObject:[[EWSHandlerValue alloc] initProperty: property withHandlerKey: c withSelector:sel] forKey:tag];
}


- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag
{
    return [handlers objectForKey: tag];
}



+ (id<EWSHandlerProtocol>) handlerForClass: (Class) cls
{
    NSMutableDictionary* handlers = [self handlers];
    if (![handlers objectForKey: cls]) {
        [cls initialize];
    }
    return [[self handlers] objectForKey: [cls className]];
}

@end

