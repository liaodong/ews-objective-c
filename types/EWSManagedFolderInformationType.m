#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSManagedFolderInformationType.h"


@implementation EWSManagedFolderInformationType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSManagedFolderInformationType class]];

    [handler property   : @"canDelete"
             isRequired : FALSE
             withXmlTag : @"CanDelete"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"canRenameOrMove"
             isRequired : FALSE
             withXmlTag : @"CanRenameOrMove"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"mustDisplayComment"
             isRequired : FALSE
             withXmlTag : @"MustDisplayComment"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"hasQuota"
             isRequired : FALSE
             withXmlTag : @"HasQuota"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isManagedFoldersRoot"
             isRequired : FALSE
             withXmlTag : @"IsManagedFoldersRoot"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"managedFolderId"
             isRequired : FALSE
             withXmlTag : @"ManagedFolderId"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"comment"
             isRequired : FALSE
             withXmlTag : @"Comment"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"storageQuota"
             isRequired : FALSE
             withXmlTag : @"StorageQuota"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"folderSize"
             isRequired : FALSE
             withXmlTag : @"FolderSize"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"homePage"
             isRequired : FALSE
             withXmlTag : @"HomePage"
             withHandler: [EWSStringTypeHandler class]];

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

