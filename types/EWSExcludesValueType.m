#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSExcludesValueType.h"


@implementation EWSExcludesValueType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSExcludesValueType class]];

    [handler property    : @"value"
             isRequired  : TRUE
             withAttrTag : @"Value"
             withHandler : [EWSExcludesAttributeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSExcludesValueType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExcludesValueType: Value=%@", _value];
}

@end

