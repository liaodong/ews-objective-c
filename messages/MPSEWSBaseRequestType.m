#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseRequestType.h"


@implementation MPSEWSBaseRequestType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseRequestType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseRequestType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseRequestType:"];
}

@end

