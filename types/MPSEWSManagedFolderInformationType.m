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
             withNamespace : 't'
             withXmlTag    : @"CanDelete"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"canRenameOrMove"
             withNamespace : 't'
             withXmlTag    : @"CanRenameOrMove"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"mustDisplayComment"
             withNamespace : 't'
             withXmlTag    : @"MustDisplayComment"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"hasQuota"
             withNamespace : 't'
             withXmlTag    : @"HasQuota"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isManagedFoldersRoot"
             withNamespace : 't'
             withXmlTag    : @"IsManagedFoldersRoot"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"managedFolderId"
             withNamespace : 't'
             withXmlTag    : @"ManagedFolderId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"comment"
             withNamespace : 't'
             withXmlTag    : @"Comment"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"storageQuota"
             withNamespace : 't'
             withXmlTag    : @"StorageQuota"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"folderSize"
             withNamespace : 't'
             withXmlTag    : @"FolderSize"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"homePage"
             withNamespace : 't'
             withXmlTag    : @"HomePage"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSManagedFolderInformationType*) val
{   (void) val;
    return TRUE;
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

