#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSendItemType.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/EWSTargetFolderIdType.h"


@implementation EWSSendItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSendItemType class]];

    [handler property    : @"saveItemToFolder"
             isRequired  : TRUE
             withAttrTag : @"SaveItemToFolder"
             withHandler : [EWSBooleanTypeHandler class]];

    [handler property      : @"itemIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [EWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler property      : @"savedItemFolderId"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SavedItemFolderId"
             withHandler   : [EWSTargetFolderIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSendItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SendItemType: SaveItemToFolder=%@ ItemIds=%@ SavedItemFolderId=%@ super=%@", _saveItemToFolder, _itemIds, _savedItemFolderId, [super description]];
}

@end

