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

+ (BOOL) isValid:(MPSEWSFractionalPageViewType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBasePagingType isValid:val forVersion:ver]) return FALSE;
    if ([val numerator] && ![MPSEWSIntegerTypeHandler isValid:[val numerator] forVersion: ver]) return FALSE;
    if ([val denominator] && ![MPSEWSIntegerTypeHandler isValid:[val denominator] forVersion: ver]) return FALSE;
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

