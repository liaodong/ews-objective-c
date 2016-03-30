#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCalendarFolderType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSCalendarPermissionSetType.h"
#import "../types/MPSEWSEffectiveRightsType.h"
#import "../types/MPSEWSExtendedPropertyType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSManagedFolderInformationType.h"


@implementation MPSEWSCalendarFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCalendarFolderType class]];

    [handler property      : @"folderId"
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"parentFolderId"
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"folderClass"
             withNamespace : 't'
             withXmlTag    : @"FolderClass"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"displayName"
             withNamespace : 't'
             withXmlTag    : @"DisplayName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"totalCount"
             withNamespace : 't'
             withXmlTag    : @"TotalCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"childFolderCount"
             withNamespace : 't'
             withXmlTag    : @"ChildFolderCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [MPSEWSExtendedPropertyType class]];

    [handler property      : @"managedFolderInformation"
             withNamespace : 't'
             withXmlTag    : @"ManagedFolderInformation"
             withHandler   : [MPSEWSManagedFolderInformationType class]];

    [handler property      : @"effectiveRights"
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [MPSEWSEffectiveRightsType class]];

    [handler property      : @"permissionSet"
             withNamespace : 't'
             withXmlTag    : @"PermissionSet"
             withHandler   : [MPSEWSCalendarPermissionSetType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCalendarFolderType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCalendarFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarFolderType: PermissionSet=%@ super=%@", _permissionSet, [super description]];
}

@end

