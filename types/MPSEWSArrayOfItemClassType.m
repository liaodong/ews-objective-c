#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfItemClassType.h"
#import "../types/MPSEWSItemClassType.h"


@implementation MPSEWSArrayOfItemClassType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfItemClassType class]];

    [handler listProperty  : @"itemClass"
             useSelector   : @"addItemClass"
             withNamespace : 't'
             withXmlTag    : @"ItemClass"
             withHandler   : [MPSEWSItemClassType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfItemClassType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val itemClass]) {
        for (NSString* obj in [val itemClass]) {
            if (![MPSEWSItemClassType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfItemClassType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfItemClassType: ItemClass=%@", _itemClass];
}

- (void) addItemClass:(NSString*) elem
{
    if (![self itemClass]) {
        [self setItemClass:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_itemClass addObject:elem];
}

@end

