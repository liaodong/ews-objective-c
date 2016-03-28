#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSTimeZoneDefinitionType.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSTimeZoneDefinitionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTimeZoneDefinitionType class]];

    [handler property    : @"id"
             isRequired  : FALSE
             withAttrTag : @"Id"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSTimeZoneDefinitionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TimeZoneDefinitionType: Id=%@", _id];
}

@end

