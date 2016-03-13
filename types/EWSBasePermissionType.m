#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBasePermissionType.h"


@implementation EWSBasePermissionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBasePermissionType class]];

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

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBasePermissionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BasePermissionType: UserId=%@ CanCreateItems=%@ CanCreateSubFolders=%@ IsFolderOwner=%@ IsFolderVisible=%@ IsFolderContact=%@ EditItems=%@ DeleteItems=%@", _userId, _canCreateItems, _canCreateSubFolders, _isFolderOwner, _isFolderVisible, _isFolderContact, _editItems, _deleteItems];
}

@end

