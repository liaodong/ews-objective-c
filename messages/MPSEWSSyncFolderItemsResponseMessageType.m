#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderItemsResponseMessageType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSResponseClassType.h"
#import "../types/MPSEWSSyncFolderItemsChangesType.h"


@implementation MPSEWSSyncFolderItemsResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderItemsResponseMessageType class]];

    [handler property    : @"responseClass"
             isRequired  : TRUE
             withAttrTag : @"ResponseClass"
             withHandler : [MPSEWSResponseClassType class]];

    [handler property      : @"messageText"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"MessageText"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"responseCode"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ResponseCode"
             withHandler   : [MPSEWSResponseCodeType class]];

    [handler property      : @"descriptiveLinkKey"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"DescriptiveLinkKey"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"messageXml"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"MessageXml"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"syncState"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SyncState"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"includesLastItemInRange"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"IncludesLastItemInRange"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"changes"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"Changes"
             withHandler   : [MPSEWSSyncFolderItemsChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderItemsResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsResponseMessageType: SyncState=%@ IncludesLastItemInRange=%@ Changes=%@ super=%@", _syncState, _includesLastItemInRange, _changes, [super description]];
}

@end

