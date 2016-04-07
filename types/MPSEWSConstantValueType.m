#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSConstantValueType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSConstantValueType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSConstantValueType class]];

    [handler property    : @"value"
             withAttrTag : @"Value"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSConstantValueType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val value] && ![MPSEWSStringTypeHandler isValid:[val value] forVersion: ver]) return FALSE;
    return TRUE;
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

