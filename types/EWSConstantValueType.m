#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSConstantValueType.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSConstantValueType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSConstantValueType class]];

    [handler property    : @"value"
             isRequired  : TRUE
             withAttrTag : @"Value"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSConstantValueType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConstantValueType: Value=%@", _value];
}

@end

