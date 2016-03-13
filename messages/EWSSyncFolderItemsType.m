#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSyncFolderItemsType.h"


@implementation EWSSyncFolderItemsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderItemsType class]];

    [handler property      : @"itemShape"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemShape"
             withHandler   : [EWSItemResponseShapeType class]];

    [handler property      : @"syncFolderId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderId"
             withHandler   : [EWSTargetFolderIdType class]];

    [handler property      : @"syncState"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SyncState"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"ignore"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"Ignore"
             withHandler   : [EWSArrayOfBaseItemIdsType class]];

    [handler property      : @"maxChangesReturned"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"MaxChangesReturned"
             withHandler   : [EWSMaxSyncChangesReturnedType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSyncFolderItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsType: ItemShape=%@ SyncFolderId=%@ SyncState=%@ Ignore=%@ MaxChangesReturned=%@ super=%@", _itemShape, _syncFolderId, _syncState, _ignore, _maxChangesReturned, [super description]];
}

@end

