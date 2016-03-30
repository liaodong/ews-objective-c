#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSExcludesValueType.h"
#import "../types/MPSEWSExcludesAttributeType.h"


@implementation MPSEWSExcludesValueType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSExcludesValueType class]];

    [handler property    : @"value"
             withAttrTag : @"Value"
             withHandler : [MPSEWSExcludesAttributeType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSExcludesValueType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSExcludesValueType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExcludesValueType: Value=%@", _value];
}

@end

