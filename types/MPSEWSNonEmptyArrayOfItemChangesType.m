#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfItemChangesType.h"
#import "../types/MPSEWSItemChangeType.h"


@implementation MPSEWSNonEmptyArrayOfItemChangesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfItemChangesType class]];

    [handler listProperty  : @"itemChange"
             useSelector   : @"addItemChange"
             withNamespace : 't'
             withXmlTag    : @"ItemChange"
             withHandler   : [MPSEWSItemChangeType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfItemChangesType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val itemChange]) {
        for (MPSEWSItemChangeType* obj in [val itemChange]) {
            if (![MPSEWSItemChangeType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfItemChangesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfItemChangesType: ItemChange=%@", _itemChange];
}

- (void) addItemChange:(MPSEWSItemChangeType*) elem
{
    if (![self itemChange]) {
        [self setItemChange:[[NSMutableArray<MPSEWSItemChangeType*> alloc] init]];
    }
    [_itemChange addObject:elem];
}

@end

