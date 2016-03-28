#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCalendarEvent.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../types/EWSCalendarEventDetails.h"
#import "../types/EWSLegacyFreeBusyType.h"


@implementation EWSCalendarEvent 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCalendarEvent class]];

    [handler property      : @"startTime"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"StartTime"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"endTime"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"EndTime"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"busyType"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"BusyType"
             withHandler   : [EWSLegacyFreeBusyType class]];

    [handler property      : @"calendarEventDetails"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CalendarEventDetails"
             withHandler   : [EWSCalendarEventDetails class]];

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

