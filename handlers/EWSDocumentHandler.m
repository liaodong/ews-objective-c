#import <Foundation/Foundation.h>

#import "EWSDocumentHandler.h"
#import "../types/EWSBasePermissionType.h"

@implementation EWSDocumentHandler
{
    id _result;
}


static NSMutableDictionary* elements;

+ (void) initialize
{
    if (!elements)
    { 
        elements = [[NSMutableDictionary alloc] init];
        [elements setObject:[EWSHandler handlerForClass:[EWSBasePermissionType class]] forKey:@"BasePermission"];
    }
}

- (id) init
{
    return [super init];
}

- (id<EWSHandlerProtocol>) handlerForElementName:(NSString*) elementName
{
    return [elements valueForKey:elementName];
}

- (void) populateValue:(id) value forKey: (NSString*) tag
{
    NSLog(@"Setting result %@ for tag %@", [value class], tag);
    _result = value;
}

- (id) result
{
    return _result;
}


+ (id) fromXml:(NSString*) xml
{
    EWSDocumentHandler* doc = [[EWSDocumentHandler alloc] init];

    NSXMLParser* parser = [[NSXMLParser alloc] initWithData:[xml dataUsingEncoding:NSUTF8StringEncoding]];

    [parser setShouldProcessNamespaces:TRUE];
    [parser setShouldReportNamespacePrefixes:TRUE];

    [parser setDelegate:doc];

    [parser parse];
    return [doc result];
}

+ (void) toXml:(NSString*)root intoBuffer:(NSMutableString*)buffer theObject:(id)object;
{
    NSMutableString* indent = nil; // [[NSMutableString alloc] init];

    id<EWSHandlerProtocol> handler = [elements valueForKey:root];

    [buffer appendString:@"<"];
    [buffer appendString:root];

    [handler  writeXmlInto:buffer for:object withIndentation:indent];

    [buffer appendString:@"</"];
    [buffer appendString:root];
    [buffer appendString:@">"];
}

@end
