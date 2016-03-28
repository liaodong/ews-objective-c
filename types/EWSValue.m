#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSValue.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSValue 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSValue class] andContentHandlerClass:[EWSStringTypeHandler class]];

    [handler property    : @"name"
             isRequired  : TRUE
             withAttrTag : @"Name"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSValue class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Value: Name=%@ super=%@", _name, [super description]];
}

@end

