#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBasePermissionType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSPermissionActionType.h"
#import "../types/MPSEWSUserIdType.h"


@implementation MPSEWSBasePermissionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBasePermissionType class]];

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

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBasePermissionType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBasePermissionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BasePermissionType: UserId=%@ CanCreateItems=%@ CanCreateSubFolders=%@ IsFolderOwner=%@ IsFolderVisible=%@ IsFolderContact=%@ EditItems=%@ DeleteItems=%@", _userId, _canCreateItems, _canCreateSubFolders, _isFolderOwner, _isFolderVisible, _isFolderContact, _editItems, _deleteItems];
}

@end

