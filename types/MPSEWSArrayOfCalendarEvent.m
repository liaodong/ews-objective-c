#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfCalendarEvent.h"
#import "../types/MPSEWSCalendarEvent.h"


@implementation MPSEWSArrayOfCalendarEvent 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfCalendarEvent class]];

    [handler listProperty  : @"calendarEvent"
             isNonEmpty    : FALSE
             useSelector   : @"addCalendarEvent"
             withNamespace : 't'
             withXmlTag    : @"CalendarEvent"
             withHandler   : [MPSEWSCalendarEvent class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfCalendarEvent class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfCalendarEvent: CalendarEvent=%@", _calendarEvent];
}

- (void) addCalendarEvent:(MPSEWSCalendarEvent*) elem
{
    if (![self calendarEvent]) {
        [self setCalendarEvent:[[NSMutableArray<MPSEWSCalendarEvent*> alloc] init]];
    }
    [_calendarEvent addObject:elem];
}

@end

