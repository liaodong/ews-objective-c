#import "MPSEWSStringType.h"

#import "../handlers/MPSEWSObjectTypeHandler.h"

@implementation MPSEWSStringType

+ (void) initialize
{
     MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSStringType class] andContentHandlerClass:[MPSEWSStringTypeHandler class]];
     [handler register];
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
