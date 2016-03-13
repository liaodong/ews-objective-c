#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBasePermissionType.h"


@implementation EWSBasePermissionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBasePermissionType class]];

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

