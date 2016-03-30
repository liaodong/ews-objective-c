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
             withNamespace : 'm'
             withXmlTag    : @"ItemShape"
             withHandler   : [MPSEWSItemResponseShapeType class]];

    [handler property      : @"itemIds"
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetItemType*) val
{   (void) val;
    return TRUE;
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

