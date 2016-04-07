#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseEmailAddressType.h"


@implementation MPSEWSBaseEmailAddressType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseEmailAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseEmailAddressType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseEmailAddressType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseEmailAddressType:"];
}

@end

