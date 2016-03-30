#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFractionalPageViewType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSFractionalPageViewType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFractionalPageViewType class]];

    [handler property    : @"maxEntriesReturned"
             withAttrTag : @"MaxEntriesReturned"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"numerator"
             withAttrTag : @"Numerator"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"denominator"
             withAttrTag : @"Denominator"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFractionalPageViewType*) val
{   (void) val;
    return TRUE;
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

