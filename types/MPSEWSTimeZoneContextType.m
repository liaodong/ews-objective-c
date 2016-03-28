#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTimeZoneContextType.h"


@implementation MPSEWSTimeZoneContextType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTimeZoneContextType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTimeZoneContextType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TimeZoneContextType:"];
}

@end

