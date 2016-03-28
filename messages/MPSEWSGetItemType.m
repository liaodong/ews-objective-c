#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetItemType.h"
#import "../types/MPSEWSItemResponseShapeType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseItemIdsType.h"


@implementation MPSEWSGetItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetItemType class]];

    [handler property      : @"itemShape"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemShape"
             withHandler   : [MPSEWSItemResponseShapeType class]];

    [handler property      : @"itemIds"
             isRequired    : TRUE
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
    return [MPSEWSGetItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetItemType: ItemShape=%@ ItemIds=%@ super=%@", _itemShape, _itemIds, [super description]];
}

@end

