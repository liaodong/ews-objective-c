#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBaseGroupByType.h"


@implementation EWSBaseGroupByType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseGroupByType class]];

    [handler property    : @"order"
             isRequired  : TRUE
             withAttrTag : @"Order"
             withHandler : [EWSSortDirectionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBaseGroupByType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseGroupByType: Order=%@", _order];
}

@end

