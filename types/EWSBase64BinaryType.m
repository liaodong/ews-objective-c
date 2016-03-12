#import "EWSBase64BinaryType.h"

#import "../handlers/EWSObjectTypeHandler.h"
#import "../handlers/EWSBase64BinaryTypeHandler.h"

@implementation EWSBase64BinaryType

+ (void) initialize
{
     EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBase64BinaryType class] andContentHandlerClass:[EWSBase64BinaryTypeHandler class]];
     [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBase64BinaryType class];
}

@end
