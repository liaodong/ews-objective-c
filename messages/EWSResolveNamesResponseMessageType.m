#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSResolveNamesResponseMessageType.h"


@implementation EWSResolveNamesResponseMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSResolveNamesResponseMessageType class]];

    [handler property    : @"responseClass"
             isRequired  : TRUE
             withAttrTag : @"ResponseClass"
             withHandler : [EWSResponseClassType class]];

    [handler property      : @"messageText"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"MessageText"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"responseCode"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ResponseCode"
             withHandler   : [EWSResponseCodeType class]];

    [handler property      : @"descriptiveLinkKey"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"DescriptiveLinkKey"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"messageXml"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"MessageXml"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"resolutionSet"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ResolutionSet"
             withHandler   : [EWSArrayOfResolutionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSResolveNamesResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ResolveNamesResponseMessageType: ResolutionSet=%@ super=%@", _resolutionSet, [super description]];
}

@end

