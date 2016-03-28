#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSManagedFolderInformationType.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSManagedFolderInformationType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSManagedFolderInformationType class]];

    [handler property      : @"canDelete"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CanDelete"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"canRenameOrMove"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CanRenameOrMove"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"mustDisplayComment"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MustDisplayComment"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"hasQuota"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"HasQuota"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isManagedFoldersRoot"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsManagedFoldersRoot"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"managedFolderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ManagedFolderId"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"comment"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Comment"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"storageQuota"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"StorageQuota"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"folderSize"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FolderSize"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"homePage"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"HomePage"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSManagedFolderInformationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ManagedFolderInformationType: CanDelete=%@ CanRenameOrMove=%@ MustDisplayComment=%@ HasQuota=%@ IsManagedFoldersRoot=%@ ManagedFolderId=%@ Comment=%@ StorageQuota=%@ FolderSize=%@ HomePage=%@", _canDelete, _canRenameOrMove, _mustDisplayComment, _hasQuota, _isManagedFoldersRoot, _managedFolderId, _comment, _storageQuota, _folderSize, _homePage];
}

@end

