#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderHierarchyType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSFolderResponseShapeType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSSyncFolderHierarchyType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderHierarchyType class]];

    [handler property      : @"folderShape"
             withNamespace : 'm'
             withXmlTag    : @"FolderShape"
             withHandler   : [MPSEWSFolderResponseShapeType class]];

    [handler property      : @"syncFolderId"
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"syncState"
             withNamespace : 'm'
             withXmlTag    : @"SyncState"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val folderShape] && ![MPSEWSFolderResponseShapeType isValid:[val folderShape]]) return FALSE;
    if ([val syncFolderId] && ![MPSEWSTargetFolderIdType isValid:[val syncFolderId]]) return FALSE;
    if ([val syncState] && ![MPSEWSStringTypeHandler isValid:[val syncState]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderHierarchyType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderHierarchyType: FolderShape=%@ SyncFolderId=%@ SyncState=%@ super=%@", _folderShape, _syncFolderId, _syncState, [super description]];
}

@end

