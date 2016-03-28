#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSConstantValueType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSConstantValueType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSConstantValueType class]];

    [handler property    : @"value"
             isRequired  : TRUE
             withAttrTag : @"Value"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSConstantValueType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConstantValueType: Value=%@", _value];
}

@end

