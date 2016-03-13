#import "EWSStringType.h"

#import "../handlers/EWSObjectTypeHandler.h"

@implementation EWSStringType

+ (void) initialize
{
     EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSStringType class] andContentHandlerClass:[EWSStringTypeHandler class]];
     [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSStringType class];
}

@end
