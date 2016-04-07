#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseGroupByType.h"
#import "../types/MPSEWSSortDirectionType.h"


@implementation MPSEWSBaseGroupByType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseGroupByType class]];

    [handler property    : @"order"
             withAttrTag : @"Order"
             withHandler : [MPSEWSSortDirectionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseGroupByType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val order] && ![MPSEWSSortDirectionType isValid:[val order] forVersion: ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseGroupByType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseGroupByType: Order=%@", _order];
}

@end

