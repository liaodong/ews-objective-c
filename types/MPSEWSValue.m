#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSValue.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSValue 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSValue class] andContentHandlerClass:[MPSEWSStringTypeHandler class]];

    [handler property    : @"name"
             withAttrTag : @"Name"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSValue*) val
{   (void) val;
    if (![MPSEWSStringType isValid:val]) return FALSE;
    if ([val name] && ![MPSEWSStringTypeHandler isValid:[val name]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSValue class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Value: Name=%@ super=%@", _name, [super description]];
}

@end

