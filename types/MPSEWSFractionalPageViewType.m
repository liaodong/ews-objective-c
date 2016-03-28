#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFractionalPageViewType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSFractionalPageViewType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFractionalPageViewType class]];

    [handler property    : @"maxEntriesReturned"
             isRequired  : FALSE
             withAttrTag : @"MaxEntriesReturned"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"numerator"
             isRequired  : TRUE
             withAttrTag : @"Numerator"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"denominator"
             isRequired  : TRUE
             withAttrTag : @"Denominator"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFractionalPageViewType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FractionalPageViewType: Numerator=%@ Denominator=%@ super=%@", _numerator, _denominator, [super description]];
}

@end

