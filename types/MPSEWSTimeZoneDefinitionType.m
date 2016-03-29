#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTimeZoneDefinitionType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSTimeZoneDefinitionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTimeZoneDefinitionType class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTimeZoneDefinitionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TimeZoneDefinitionType: Id=%@", _id];
}

@end

