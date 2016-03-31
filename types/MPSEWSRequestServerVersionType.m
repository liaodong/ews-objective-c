#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRequestServerVersionType.h"


@implementation MPSEWSRequestServerVersionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRequestServerVersionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRequestServerVersionType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRequestServerVersionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RequestServerVersionType:"];
}

@end

