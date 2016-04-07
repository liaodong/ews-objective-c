#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfBaseItemIdsType.h"
#import "../types/MPSEWSItemIdType.h"


@implementation MPSEWSArrayOfBaseItemIdsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfBaseItemIdsType class]];

    [handler listProperty  : @"itemId"
             useSelector   : @"addItemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfBaseItemIdsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val itemId]) {
        for (MPSEWSItemIdType* obj in [val itemId]) {
            if (![MPSEWSItemIdType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfBaseItemIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfBaseItemIdsType: ItemId=%@", _itemId];
}

- (void) addItemId:(MPSEWSItemIdType*) elem
{
    if (![self itemId]) {
        [self setItemId:[[NSMutableArray<MPSEWSItemIdType*> alloc] init]];
    }
    [_itemId addObject:elem];
}

@end

