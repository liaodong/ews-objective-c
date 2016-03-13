#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetItemType.h"


@implementation EWSGetItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetItemType class]];

    [handler property      : @"itemShape"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemShape"
             withHandler   : [EWSItemResponseShapeType class]];

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
    return [EWSGetItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetItemType: ItemShape=%@ ItemIds=%@ super=%@", _itemShape, _itemIds, [super description]];
}

@end

