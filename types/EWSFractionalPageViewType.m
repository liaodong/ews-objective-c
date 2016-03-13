#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFractionalPageViewType.h"


@implementation EWSFractionalPageViewType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFractionalPageViewType class]];

    [handler property    : @"maxEntriesReturned"
             isRequired  : FALSE
             withAttrTag : @"MaxEntriesReturned"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler property    : @"numerator"
             isRequired  : TRUE
             withAttrTag : @"Numerator"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler property    : @"denominator"
             isRequired  : TRUE
             withAttrTag : @"Denominator"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFractionalPageViewType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FractionalPageViewType: Numerator=%@ Denominator=%@ super=%@", _numerator, _denominator, [super description]];
}

@end

