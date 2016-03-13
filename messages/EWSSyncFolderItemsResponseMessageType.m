#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSyncFolderItemsResponseMessageType.h"


@implementation EWSSyncFolderItemsResponseMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderItemsResponseMessageType class]];

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

    [handler property      : @"syncState"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SyncState"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"includesLastItemInRange"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"IncludesLastItemInRange"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"changes"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"Changes"
             withHandler   : [EWSSyncFolderItemsChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSyncFolderItemsResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsResponseMessageType: SyncState=%@ IncludesLastItemInRange=%@ Changes=%@ super=%@", _syncState, _includesLastItemInRange, _changes, [super description]];
}

@end

