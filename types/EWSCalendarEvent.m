#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCalendarEvent.h"


@implementation EWSCalendarEvent 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCalendarEvent class]];

    [handler property   : @"startTime"
             isRequired : TRUE
             withXmlTag : @"StartTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"endTime"
             isRequired : TRUE
             withXmlTag : @"EndTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"busyType"
             isRequired : TRUE
             withXmlTag : @"BusyType"
             withHandler: [EWSLegacyFreeBusyType class]];

    [handler property   : @"calendarEventDetails"
             isRequired : FALSE
             withXmlTag : @"CalendarEventDetails"
             withHandler: [EWSCalendarEventDetails class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCalendarEvent class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarEvent: StartTime=%@ EndTime=%@ BusyType=%@ CalendarEventDetails=%@", _startTime, _endTime, _busyType, _calendarEventDetails];
}

@end

