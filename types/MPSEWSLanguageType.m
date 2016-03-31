#import "MPSEWSLanguageType.h"

#import "../handlers/MPSEWSObjectTypeHandler.h"
#import "../handlers/MPSEWSLanguageTypeHandler.h"

@implementation MPSEWSLanguageType

+ (void) initialize
{
     MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSLanguageType class] andContentHandlerClass:[MPSEWSLanguageTypeHandler class]];
     [handler register];
}
+ (BOOL) isValid:(MPSEWSLanguageType*)val
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
    return [MPSEWSLanguageType class];
}

@end
