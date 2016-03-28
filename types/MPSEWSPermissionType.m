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
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UserId"
             withHandler   : [MPSEWSUserIdType class]];

    [handler property      : @"canCreateItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CanCreateItems"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"canCreateSubFolders"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CanCreateSubFolders"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderOwner"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFolderOwner"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderVisible"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFolderVisible"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderContact"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFolderContact"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"editItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EditItems"
             withHandler   : [MPSEWSPermissionActionType class]];

    [handler property      : @"deleteItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DeleteItems"
             withHandler   : [MPSEWSPermissionActionType class]];

    [handler property      : @"readItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReadItems"
             withHandler   : [MPSEWSPermissionReadAccessType class]];

    [handler property      : @"permissionLevel"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"PermissionLevel"
             withHandler   : [MPSEWSPermissionLevelType class]];

    [handler register];
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

