#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCalendarViewType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSCalendarViewType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCalendarViewType class]];

    [handler property    : @"maxEntriesReturned"
             withAttrTag : @"MaxEntriesReturned"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"startDate"
             withAttrTag : @"StartDate"
             withHandler : [MPSEWSDateTimeTypeHandler class]];

    [handler property    : @"endDate"
             withAttrTag : @"EndDate"
             withHandler : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCalendarViewType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarViewType: StartDate=%@ EndDate=%@ super=%@", _startDate, _endDate, [super description]];
}

@end

