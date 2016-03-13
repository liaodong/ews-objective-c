#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPermissionType.h"


@implementation EWSPermissionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPermissionType class]];

    [handler property   : @"userId"
             isRequired : TRUE
             withXmlTag : @"UserId"
             withHandler: [EWSUserIdType class]];

    [handler property   : @"canCreateItems"
             isRequired : FALSE
             withXmlTag : @"CanCreateItems"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"canCreateSubFolders"
             isRequired : FALSE
             withXmlTag : @"CanCreateSubFolders"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isFolderOwner"
             isRequired : FALSE
             withXmlTag : @"IsFolderOwner"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isFolderVisible"
             isRequired : FALSE
             withXmlTag : @"IsFolderVisible"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isFolderContact"
             isRequired : FALSE
             withXmlTag : @"IsFolderContact"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"editItems"
             isRequired : FALSE
             withXmlTag : @"EditItems"
             withHandler: [EWSPermissionActionType class]];

    [handler property   : @"deleteItems"
             isRequired : FALSE
             withXmlTag : @"DeleteItems"
             withHandler: [EWSPermissionActionType class]];

    [handler property   : @"readItems"
             isRequired : FALSE
             withXmlTag : @"ReadItems"
             withHandler: [EWSPermissionReadAccessType class]];

    [handler property   : @"permissionLevel"
             isRequired : TRUE
             withXmlTag : @"PermissionLevel"
             withHandler: [EWSPermissionLevelType class]];

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

