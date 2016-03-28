#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSearchFolderType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSEffectiveRightsType.h"
#import "../types/MPSEWSExtendedPropertyType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSManagedFolderInformationType.h"
#import "../types/MPSEWSPermissionSetType.h"
#import "../types/MPSEWSSearchParametersType.h"


@implementation MPSEWSSearchFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSearchFolderType class]];

    [handler property      : @"folderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"parentFolderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"folderClass"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FolderClass"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"displayName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"totalCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"TotalCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"childFolderCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ChildFolderCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             isNonEmpty    : FALSE
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [MPSEWSExtendedPropertyType class]];

    [handler property      : @"managedFolderInformation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ManagedFolderInformation"
             withHandler   : [MPSEWSManagedFolderInformationType class]];

    [handler property      : @"effectiveRights"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [MPSEWSEffectiveRightsType class]];

    [handler property      : @"permissionSet"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PermissionSet"
             withHandler   : [MPSEWSPermissionSetType class]];

    [handler property      : @"unreadCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"UnreadCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"searchParameters"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"SearchParameters"
             withHandler   : [MPSEWSSearchParametersType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSearchFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SearchFolderType: SearchParameters=%@ super=%@", _searchParameters, [super description]];
}

@end

