#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGroupedItemsType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfRealItemsType.h"


@implementation MPSEWSGroupedItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGroupedItemsType class]];

    [handler property      : @"groupIndex"
             withNamespace : 't'
             withXmlTag    : @"GroupIndex"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"items"
             withNamespace : 't'
             withXmlTag    : @"Items"
             withHandler   : [MPSEWSArrayOfRealItemsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGroupedItemsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val groupIndex] && ![MPSEWSStringTypeHandler isValid:[val groupIndex] forVersion:ver]) return FALSE;
    if ([val items] && ![MPSEWSArrayOfRealItemsType isValid:[val items] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGroupedItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GroupedItemsType: GroupIndex=%@ Items=%@", _groupIndex, _items];
}

@end

