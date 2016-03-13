#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBaseMoveCopyItemType.h"


@implementation EWSBaseMoveCopyItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseMoveCopyItemType class]];

    [handler property      : @"toFolderId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ToFolderId"
             withHandler   : [EWSTargetFolderIdType class]];

    [handler property      : @"itemIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [EWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBaseMoveCopyItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseMoveCopyItemType: ToFolderId=%@ ItemIds=%@ super=%@", _toFolderId, _itemIds, [super description]];
}

@end

