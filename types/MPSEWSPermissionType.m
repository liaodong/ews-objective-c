#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPermissionType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSPermissionActionType.h"
#import "../types/MPSEWSPermissionLevelType.h"
#import "../types/MPSEWSPermissionReadAccessType.h"
#import "../types/MPSEWSUserIdType.h"


@implementation MPSEWSPermissionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPermissionType class]];

    [handler property      : @"userId"
             withNamespace : 't'
             withXmlTag    : @"UserId"
             withHandler   : [MPSEWSUserIdType class]];

    [handler property      : @"canCreateItems"
             withNamespace : 't'
             withXmlTag    : @"CanCreateItems"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"canCreateSubFolders"
             withNamespace : 't'
             withXmlTag    : @"CanCreateSubFolders"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderOwner"
             withNamespace : 't'
             withXmlTag    : @"IsFolderOwner"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderVisible"
             withNamespace : 't'
             withXmlTag    : @"IsFolderVisible"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderContact"
             withNamespace : 't'
             withXmlTag    : @"IsFolderContact"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"editItems"
             withNamespace : 't'
             withXmlTag    : @"EditItems"
             withHandler   : [MPSEWSPermissionActionType class]];

    [handler property      : @"deleteItems"
             withNamespace : 't'
             withXmlTag    : @"DeleteItems"
             withHandler   : [MPSEWSPermissionActionType class]];

    [handler property      : @"readItems"
             withNamespace : 't'
             withXmlTag    : @"ReadItems"
             withHandler   : [MPSEWSPermissionReadAccessType class]];

    [handler property      : @"permissionLevel"
             withNamespace : 't'
             withXmlTag    : @"PermissionLevel"
             withHandler   : [MPSEWSPermissionLevelType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPermissionType*) val
{   (void) val;
    if (![MPSEWSBasePermissionType isValid:val]) return FALSE;
    if ([val readItems] && ![MPSEWSPermissionReadAccessType isValid:[val readItems]]) return FALSE;
    if ([val permissionLevel] && ![MPSEWSPermissionLevelType isValid:[val permissionLevel]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPermissionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PermissionType: ReadItems=%@ PermissionLevel=%@ super=%@", _readItems, _permissionLevel, [super description]];
}

@end

