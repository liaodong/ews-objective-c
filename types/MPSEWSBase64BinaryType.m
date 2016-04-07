#import "MPSEWSBase64BinaryType.h"

#import "../handlers/MPSEWSObjectTypeHandler.h"
#import "../handlers/MPSEWSBase64BinaryTypeHandler.h"

@implementation MPSEWSBase64BinaryType

+ (void) initialize
{
     MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBase64BinaryType class] andContentHandlerClass:[MPSEWSBase64BinaryTypeHandler class]];
     [handler register];
}
+ (BOOL) isValid:(MPSEWSBase64BinaryType*)val forVersion:(MPSEWSExchangeVersion) ver
{
    (void) val;
    return TRUE; // FIX ME
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBase64BinaryType class];
}

@end
