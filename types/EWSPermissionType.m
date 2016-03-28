#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPermissionType.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSPermissionActionType.h"
#import "../types/EWSPermissionLevelType.h"
#import "../types/EWSPermissionReadAccessType.h"
#import "../types/EWSUserIdType.h"


@implementation EWSPermissionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPermissionType class]];

    [handler property      : @"userId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UserId"
             withHandler   : [EWSUserIdType class]];

    [handler property      : @"canCreateItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CanCreateItems"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"canCreateSubFolders"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CanCreateSubFolders"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isFolderOwner"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFolderOwner"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isFolderVisible"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFolderVisible"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isFolderContact"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFolderContact"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"editItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EditItems"
             withHandler   : [EWSPermissionActionType class]];

    [handler property      : @"deleteItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DeleteItems"
             withHandler   : [EWSPermissionActionType class]];

    [handler property      : @"readItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReadItems"
             withHandler   : [EWSPermissionReadAccessType class]];

    [handler property      : @"permissionLevel"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"PermissionLevel"
             withHandler   : [EWSPermissionLevelType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPermissionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PermissionType: ReadItems=%@ PermissionLevel=%@ super=%@", _readItems, _permissionLevel, [super description]];
}

@end

