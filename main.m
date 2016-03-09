#import <Foundation/Foundation.h>

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
    TagHelper tag = [XmlHelper registerClass:[CreateItem class] 
                               forTag:@"CreateItem" 
                               inNamespace:@"http://schemas.microsoft.com/exchange/services/2006/messages" ];

    [tag registerElement:@"Items" withHandler:[NonEmptyArrayOfItems class] withSelector:@"items"];
}
@end

+ (id) populateUsingStream:(XmlStream*) stream
{
    [self setItems: [stream forTag:@"Items" elemnts:[self items] forClass:[NonEmptyArrayOfItems class]]];
}


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
    @autoreleasepool {
        NSLog (@"Hello, World!");
    }

    Class cls = [Test class];
    //SEL  init = NSSelectorFromString(@"initFromXml");

    [[cls deserializeFromXml] release];
    return 0;
}

