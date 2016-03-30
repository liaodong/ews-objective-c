#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindItemParentType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSArrayOfGroupedItemsType.h"
#import "../types/MPSEWSArrayOfRealItemsType.h"


@implementation MPSEWSFindItemParentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindItemParentType class]];

    [handler property    : @"indexedPagingOffset"
             withAttrTag : @"IndexedPagingOffset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"numeratorOffset"
             withAttrTag : @"NumeratorOffset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"absoluteDenominator"
             withAttrTag : @"AbsoluteDenominator"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"includesLastItemInRange"
             withAttrTag : @"IncludesLastItemInRange"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property    : @"totalItemsInView"
             withAttrTag : @"TotalItemsInView"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"items"
             withNamespace : 't'
             withXmlTag    : @"Items"
             withHandler   : [MPSEWSArrayOfRealItemsType class]];

    [handler property      : @"groups"
             withNamespace : 't'
             withXmlTag    : @"Groups"
             withHandler   : [MPSEWSArrayOfGroupedItemsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFindItemParentType*) val
{   (void) val;
    if ([val indexedPagingOffset] && ![MPSEWSIntegerTypeHandler isValid:[val indexedPagingOffset]]) return FALSE;
    if ([val numeratorOffset] && ![MPSEWSIntegerTypeHandler isValid:[val numeratorOffset]]) return FALSE;
    if ([val absoluteDenominator] && ![MPSEWSIntegerTypeHandler isValid:[val absoluteDenominator]]) return FALSE;
    if ([val includesLastItemInRange] && ![MPSEWSBooleanTypeHandler isValid:[val includesLastItemInRange]]) return FALSE;
    if ([val totalItemsInView] && ![MPSEWSIntegerTypeHandler isValid:[val totalItemsInView]]) return FALSE;
    if ([val items] && ![MPSEWSArrayOfRealItemsType isValid:[val items]]) return FALSE;
    if ([val groups] && ![MPSEWSArrayOfGroupedItemsType isValid:[val groups]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFindItemParentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindItemParentType: IndexedPagingOffset=%@ NumeratorOffset=%@ AbsoluteDenominator=%@ IncludesLastItemInRange=%@ TotalItemsInView=%@ Items=%@ Groups=%@", _indexedPagingOffset, _numeratorOffset, _absoluteDenominator, _includesLastItemInRange, _totalItemsInView, _items, _groups];
}

@end

