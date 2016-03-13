#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSCalendarViewType.h"


@implementation EWSCalendarViewType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCalendarViewType class]];

    [handler property    : @"maxEntriesReturned"
             isRequired  : FALSE
             withAttrTag : @"MaxEntriesReturned"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler property    : @"startDate"
             isRequired  : TRUE
             withAttrTag : @"StartDate"
             withHandler : [EWSDateTimeTypeHandler class]];

    [handler property    : @"endDate"
             isRequired  : TRUE
             withAttrTag : @"EndDate"
             withHandler : [EWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCalendarViewType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarViewType: StartDate=%@ EndDate=%@ super=%@", _startDate, _endDate, [super description]];
}

@end

