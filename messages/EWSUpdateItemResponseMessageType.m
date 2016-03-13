#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSUpdateItemResponseMessageType.h"


@implementation EWSUpdateItemResponseMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSUpdateItemResponseMessageType class]];

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

    [handler property      : @"items"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Items"
             withHandler   : [EWSArrayOfRealItemsType class]];

    [handler property      : @"conflictResults"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ConflictResults"
             withHandler   : [EWSConflictResultsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSUpdateItemResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateItemResponseMessageType: ConflictResults=%@ super=%@", _conflictResults, [super description]];
}

@end

