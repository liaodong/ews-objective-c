#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSendItemType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSSendItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSendItemType class]];

    [handler property    : @"saveItemToFolder"
             withAttrTag : @"SaveItemToFolder"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"itemIds"
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler property      : @"savedItemFolderId"
             withNamespace : 'm'
             withXmlTag    : @"SavedItemFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSendItemType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val saveItemToFolder] && ![MPSEWSBooleanTypeHandler isValid:[val saveItemToFolder] forVersion: ver]) return FALSE;
    if ([val itemIds] && ![MPSEWSNonEmptyArrayOfBaseItemIdsType isValid:[val itemIds] forVersion:ver]) return FALSE;
    if ([val savedItemFolderId] && ![MPSEWSTargetFolderIdType isValid:[val savedItemFolderId] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSendItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SendItemType: SaveItemToFolder=%@ ItemIds=%@ SavedItemFolderId=%@ super=%@", _saveItemToFolder, _itemIds, _savedItemFolderId, [super description]];
}

@end

