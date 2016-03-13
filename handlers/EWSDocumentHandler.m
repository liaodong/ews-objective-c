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
        [elements setObject:[EWSHandler handlerForClass:[EWSBasePermissionType class]] forKey:@"t:BasePermission"];
        [elements setObject:[EWSHandler handlerForClass:[EWSBasePermissionType class]] forKey:@"m:BasePermission"];
    }
}

- (id) init
{
    return [super init];
}

- (id<EWSHandlerProtocol>) handlerForElementName:(NSString*) elementName namespace:(char) ns
{
    elementName = [NSString stringWithFormat:@"%c:%@", ns, elementName];
    return [elements valueForKey:elementName];
}

- (void) populateValue:(id) value forKey: (NSString*) tag namespace:(char) ns
{
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

+ (void) toXml:(NSString*)root namespace:(char)ns intoBuffer:(NSMutableString*)buffer theObject:(id)object;
{
    
    NSMutableString* indent = nil; // [[NSMutableString alloc] init];

    id<EWSHandlerProtocol> handler = [elements valueForKey:[NSString stringWithFormat:@"%c:%@", ns, root]];

    [buffer appendString:@"<"];
    [buffer appendString:root];
    [buffer appendString:@" xmlns=\"http://schemas.microsoft.com/exchange/services/2006/messages\""];
    [buffer appendString:@" xmlns:m=\"http://schemas.microsoft.com/exchange/services/2006/messages\""];
    [buffer appendString:@" xmlns:t=\"http://schemas.microsoft.com/exchange/services/2006/types\""];

    [handler  writeXmlInto:buffer for:object withIndentation:indent];

    [buffer appendString:@"</"];
    [buffer appendString:root];
    [buffer appendString:@">"];
}

@end
