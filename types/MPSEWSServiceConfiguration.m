#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSServiceConfiguration.h"


@implementation MPSEWSServiceConfiguration 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSServiceConfiguration class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSServiceConfiguration*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSServiceConfiguration class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ServiceConfiguration:"];
}

@end

