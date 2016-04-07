#import "MPSEWSStringType.h"

#import "../handlers/MPSEWSObjectTypeHandler.h"

@implementation MPSEWSStringType

+ (void) initialize
{
     MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSStringType class] andContentHandlerClass:[MPSEWSStringTypeHandler class]];
     [handler register];
}
+ (BOOL) isValid:(MPSEWSStringType*)val forVersion:(MPSEWSExchangeVersion) ver
{
    (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSStringType class];
}

@end
