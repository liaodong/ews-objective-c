#import <Foundation/Foundation.h>
#import "Generator.h"
#import "handlers/EWSDocumentHandler.h"

/*
@interface XmlDeserializer

+ (void) registerClass:(Class) class forTag:(NString*);
- (id)   deserializeXml:(NString*) string;
@end

@implementation XmlDeserializer
{
    
}

@end
@interface XmlObject : NSObject

+ (id)   deserializeUsingXmlParser:(NSXMLParser*) parser;
- (void) serializeTOString: (NSMutableString*) string;

@end

@implementation
- (void) serializeToXmlString:(NString*) string
{
    [string append:[self startTag:tag]];
    [items serializeToXmlString string];
    [super  append:[self endTag:tag]];
}

@interface CreateItem : XmlObject

@property items;
- (void) serializeToXmlString:(NString*) string
@end

@implementation CreateItem

+ (void) initialize
{
    Handler handler = [Handler initWithClass:[CreateItem class]];

    [handler registerAttribute:@"Attr" withPropertyKey:@"attr"];

    [handler registerElement:@"Items" withHandler:[NonEmptyArrayOfItems class] withPropertyKey:@"items"];
    [handler registerElement:@"Items" withHandler:[NonEmptyArrayOfItems class] withPropertyKey:@"items" andSelector:@"addItem"];

    [handler registerForCharacters:@"text"];
}
@end


@implementation Deserializer
    start ()
    {
        if (start) 
        {
            Element* elem = [[Element alloc] initWithParent: self andHandler:[Handler handlerFor:tag]];
            [elem parseAttributes:attributes];
            [parser setDelegate:elem];
        }
    }
    end ()
    {
        SEL selector = [handler selectorFor:tag];
        [[[handler xmlClass] alloc] init]
        [parent addChild:object forTag:tag];
        [parser setDelegate:parent];
    }
@end

+ (id) populateUsingStream:(XmlStream*) stream
{
    [self setItems: [stream forTag:@"Items" elemnts:[self items] forClass:[NonEmptyArrayOfItems class]]];
}

*/
@interface Test : NSObject

+ (id) deserializeFromXml;
- (void) dealloc;
@end

@implementation Test

+ (id) deserializeFromXml
{
    @autoreleasepool {
            NSLog (@"Hello in initializer");
    }
    Test* result = [[Test alloc] init];
    return [result autorelease];
}

- (void) dealloc
{
    [super dealloc];
}

@end

int main (int argc, const char* argv[]) {
/*
    @autoreleasepool {
        NSLog (@"Hello, World!");
    }

    Class cls = [Test class];
    //SEL  init = NSSelectorFromString(@"initFromXml");

    [[cls deserializeFromXml] release];

*/
        NSString* xml = @"<BasePermission xmlns=\"ews_xsd/messages\" xmlns:t=\"ews_xsd/types\"><t:UserId><t:SID>sid</t:SID><Ignore><Foo></Foo><Foo></Foo></Ignore><t:PrimarySmtpAddress>fiberlink.com</t:PrimarySmtpAddress><t:DisplayName>Venkat Murty</t:DisplayName><t:DistinguishedUser>Default</t:DistinguishedUser></t:UserId><t:CanCreateItems>TRUE</t:CanCreateItems><t:EditItems>All</t:EditItems><t:DeleteItems>None</t:DeleteItems></BasePermission>";
        id obj = [EWSDocumentHandler fromXml:xml];

        NSLog(@"obj = %@", obj);

        NSMutableString* b = [[NSMutableString alloc] init];
        [EWSDocumentHandler toXml:@"BasePermission" namespace:'m' intoBuffer:b theObject:obj];

        NSLog(@"xml = %@", xml);
        NSLog(@"xml = %@", b);
}

