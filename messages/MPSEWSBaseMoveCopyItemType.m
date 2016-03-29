#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseMoveCopyItemType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSBaseMoveCopyItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseMoveCopyItemType class]];

    [handler property      : @"toFolderId"
             withNamespace : 'm'
             withXmlTag    : @"ToFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"itemIds"
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseMoveCopyItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseMoveCopyItemType: ToFolderId=%@ ItemIds=%@ super=%@", _toFolderId, _itemIds, [super description]];
}

@end

