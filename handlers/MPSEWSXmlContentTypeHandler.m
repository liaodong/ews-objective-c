#import "MPSEWSXmlContentTypeHandler.h"


@interface MPSEWSXmlContent : NSObject
{}

- (id) init;

@property NSMutableDictionary*   mappings;
@property NSMutableData*         data;
@property char                   ns;
@end

@implementation MPSEWSXmlContent
{}

- (id) init
{
    self = [super init];
    [self setNs:'a'];
    [self setData:[[NSMutableData alloc] init]];
    [self setMappings:[[NSMutableDictionary alloc] init]];
    return self;
}
@end

@implementation MPSEWSXmlContentTypeHandler

+ (void) initialize
{
    [[[MPSEWSXmlContentTypeHandler alloc] init] register];
}

+ (BOOL) isValid:(NSData*) val forVersion:(MPSEWSExchangeVersion) ver
{
    // Check is it is a valid xml document, just parse it
    return TRUE;
}

- (MPSEWSXmlContent*) content:(id) obj
{
    return (MPSEWSXmlContent*) obj;
}

- (id)initWithClass: (Class)cls
{
    return [super initWithClass:cls];
}

- (id) init
{
    return [super initWithClass:[MPSEWSXmlContentTypeHandler class]];
}


- (id) constructWithAttributes: (NSDictionary *)attributes
{
    return [[MPSEWSXmlContent alloc] init];
}

- (id) updateObject:(id) obj withCharacters:(NSString*) str
{
    [[[self content:obj] data] appendData:[str dataUsingEncoding:NSUTF8StringEncoding]];
    return obj;
}
- (id) updateObject:(id)obj startElement:(NSString*) elementName namespace:(NSString*) namespaceURI attributes:(NSDictionary*) attributeDict
{
    BOOL insertNS = FALSE;
    MPSEWSXmlContent* content = [self content:obj];

    NSString* ns = nil;

    if (namespaceURI)
    {
        ns = [[content mappings] valueForKey:namespaceURI];
        if (!ns)
        {
            [[content mappings] setObject:[NSString stringWithFormat:@"%c", [content ns]] forKey:namespaceURI];
            [content setNs:[content ns] + 1];
    
            insertNS = TRUE;
            ns = [[content mappings] valueForKey:namespaceURI];
        }
    }
    [[content data] appendBytes:"<" length:1];

    if (ns) {
        [[content data] appendData:[ns dataUsingEncoding:NSUTF8StringEncoding]];
        [[content data] appendBytes:":" length:1];
    }
    [[content data] appendData:[elementName dataUsingEncoding:NSUTF8StringEncoding]];

    if (insertNS) {
        [[content data] appendBytes:" xmlns:" length:7];
        [[content data] appendData:[[[content mappings] valueForKey:namespaceURI] dataUsingEncoding:NSUTF8StringEncoding]];
        [[content data] appendBytes:"=\"" length:2];
        [[content data] appendData:[namespaceURI dataUsingEncoding:NSUTF8StringEncoding]];
        [[content data] appendBytes:"\"" length:1];
    }

    for( NSString *key in attributeDict)
    {
        [[content data] appendBytes:" " length:1];
        [[content data] appendData:[key dataUsingEncoding:NSUTF8StringEncoding]];
        [[content data] appendBytes:"=\"" length:2];
        [[content data] appendData:[[attributeDict valueForKey:key] dataUsingEncoding:NSUTF8StringEncoding]];
        [[content data] appendBytes:"\"" length:1];
    }
    [[content data] appendBytes:">" length:1];

    return obj;
}

- (id) updateObject:(id)obj endElement:(NSString*) elementName namespace:(NSString*) namespaceURI
{
    MPSEWSXmlContent* content = [self content:obj];
    NSString* ns = [[content mappings] valueForKey:namespaceURI];

    [[content data] appendBytes:"</" length:2];

    if (ns) {
        [[content data] appendData:[ns dataUsingEncoding:NSUTF8StringEncoding]];
        [[content data] appendBytes:":" length:1];
    }
    [[content data] appendData:[elementName dataUsingEncoding:NSUTF8StringEncoding]];
    [[content data] appendBytes:">" length:1];

    return obj;
}
- (id) updateObjectBeforeAssignment:(id) obj
{
    const char* end = "";
    [[[self content:obj] data] appendBytes:end length:1];
    return [[self content:obj] data];
}

- (id<MPSEWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace : (char) ns
{
    return self;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent
{
    NSData* data = (NSData*) object;
    (void) data;
}

- (BOOL) parse
{
    return FALSE;
}

@end

