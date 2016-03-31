#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSProtectionRuleArgumentType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSProtectionRuleArgumentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSProtectionRuleArgumentType class]];

    [handler property    : @"value"
             withAttrTag : @"Value"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSProtectionRuleArgumentType*) val
{   (void) val;
    if ([val value] && ![MPSEWSStringTypeHandler isValid:[val value]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSProtectionRuleArgumentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ProtectionRuleArgumentType: Value=%@", _value];
}

@end

