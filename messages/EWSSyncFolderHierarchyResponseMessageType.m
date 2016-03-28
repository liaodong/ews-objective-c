#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSyncFolderHierarchyResponseMessageType.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../messages/EWSResponseCodeType.h"
#import "../types/EWSResponseClassType.h"
#import "../types/EWSSyncFolderHierarchyChangesType.h"


@implementation EWSSyncFolderHierarchyResponseMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderHierarchyResponseMessageType class]];

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

    [handler property      : @"includesLastFolderInRange"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"IncludesLastFolderInRange"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"changes"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"Changes"
             withHandler   : [EWSSyncFolderHierarchyChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSyncFolderHierarchyResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderHierarchyResponseMessageType: SyncState=%@ IncludesLastFolderInRange=%@ Changes=%@ super=%@", _syncState, _includesLastFolderInRange, _changes, [super description]];
}

@end

