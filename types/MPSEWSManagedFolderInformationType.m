#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSManagedFolderInformationType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSManagedFolderInformationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSManagedFolderInformationType class]];

    [handler property      : @"canDelete"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CanDelete"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"canRenameOrMove"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CanRenameOrMove"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"mustDisplayComment"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MustDisplayComment"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"hasQuota"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"HasQuota"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isManagedFoldersRoot"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsManagedFoldersRoot"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"managedFolderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ManagedFolderId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"comment"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Comment"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"storageQuota"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"StorageQuota"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"folderSize"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FolderSize"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"homePage"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"HomePage"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSManagedFolderInformationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ManagedFolderInformationType: CanDelete=%@ CanRenameOrMove=%@ MustDisplayComment=%@ HasQuota=%@ IsManagedFoldersRoot=%@ ManagedFolderId=%@ Comment=%@ StorageQuota=%@ FolderSize=%@ HomePage=%@", _canDelete, _canRenameOrMove, _mustDisplayComment, _hasQuota, _isManagedFoldersRoot, _managedFolderId, _comment, _storageQuota, _folderSize, _homePage];
}

@end

