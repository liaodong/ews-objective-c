#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSyncFolderHierarchyType.h"


@implementation EWSSyncFolderHierarchyType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderHierarchyType class]];

    [handler property      : @"folderShape"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderShape"
             withHandler   : [EWSFolderResponseShapeType class]];

    [handler property      : @"syncFolderId"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderId"
             withHandler   : [EWSTargetFolderIdType class]];

    [handler property      : @"syncState"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SyncState"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSyncFolderHierarchyType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderHierarchyType: FolderShape=%@ SyncFolderId=%@ SyncState=%@ super=%@", _folderShape, _syncFolderId, _syncState, [super description]];
}

@end

