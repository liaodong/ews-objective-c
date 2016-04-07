#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderItemsType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfBaseItemIdsType.h"
#import "../types/MPSEWSItemResponseShapeType.h"
#import "../types/MPSEWSMaxSyncChangesReturnedType.h"
#import "../types/MPSEWSSyncFolderItemsScopeType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSSyncFolderItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderItemsType class]];

    [handler property      : @"itemShape"
             withNamespace : 'm'
             withXmlTag    : @"ItemShape"
             withHandler   : [MPSEWSItemResponseShapeType class]];

    [handler property      : @"syncFolderId"
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"syncState"
             withNamespace : 'm'
             withXmlTag    : @"SyncState"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"ignore"
             withNamespace : 'm'
             withXmlTag    : @"Ignore"
             withHandler   : [MPSEWSArrayOfBaseItemIdsType class]];

    [handler property      : @"maxChangesReturned"
             withNamespace : 'm'
             withXmlTag    : @"MaxChangesReturned"
             withHandler   : [MPSEWSMaxSyncChangesReturnedType class]];

    [handler property      : @"syncScope"
             withNamespace : 'm'
             withXmlTag    : @"SyncScope"
             withHandler   : [MPSEWSSyncFolderItemsScopeType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSyncFolderItemsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val itemShape] && ![MPSEWSItemResponseShapeType isValid:[val itemShape] forVersion:ver]) return FALSE;
    if ([val syncFolderId] && ![MPSEWSTargetFolderIdType isValid:[val syncFolderId] forVersion:ver]) return FALSE;
    if ([val syncState] && ![MPSEWSStringTypeHandler isValid:[val syncState] forVersion:ver]) return FALSE;
    if ([val ignore] && ![MPSEWSArrayOfBaseItemIdsType isValid:[val ignore] forVersion:ver]) return FALSE;
    if ([val maxChangesReturned] && ![MPSEWSMaxSyncChangesReturnedType isValid:[val maxChangesReturned] forVersion:ver]) return FALSE;
    if ([val syncScope] && ![MPSEWSSyncFolderItemsScopeType isValid:[val syncScope] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsType: ItemShape=%@ SyncFolderId=%@ SyncState=%@ Ignore=%@ MaxChangesReturned=%@ SyncScope=%@ super=%@", _itemShape, _syncFolderId, _syncState, _ignore, _maxChangesReturned, _syncScope, [super description]];
}

@end

