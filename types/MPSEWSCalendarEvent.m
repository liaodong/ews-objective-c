#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCalendarEvent.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSCalendarEventDetails.h"
#import "../types/MPSEWSLegacyFreeBusyType.h"


@implementation MPSEWSCalendarEvent 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCalendarEvent class]];

    [handler property      : @"startTime"
             withNamespace : 't'
             withXmlTag    : @"StartTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"endTime"
             withNamespace : 't'
             withXmlTag    : @"EndTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"busyType"
             withNamespace : 't'
             withXmlTag    : @"BusyType"
             withHandler   : [MPSEWSLegacyFreeBusyType class]];

    [handler property      : @"calendarEventDetails"
             withNamespace : 't'
             withXmlTag    : @"CalendarEventDetails"
             withHandler   : [MPSEWSCalendarEventDetails class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCalendarEvent class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarEvent: StartTime=%@ EndTime=%@ BusyType=%@ CalendarEventDetails=%@", _startTime, _endTime, _busyType, _calendarEventDetails];
}

@end

