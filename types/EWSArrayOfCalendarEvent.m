#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfCalendarEvent.h"
#import "../types/EWSCalendarEvent.h"


@implementation EWSArrayOfCalendarEvent 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfCalendarEvent class]];

    [handler listProperty  : @"calendarEvent"
             isNonEmpty    : FALSE
             useSelector   : @"addCalendarEvent"
             withNamespace : 't'
             withXmlTag    : @"CalendarEvent"
             withHandler   : [EWSCalendarEvent class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfCalendarEvent class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfCalendarEvent: CalendarEvent=%@", _calendarEvent];
}

- (void) addCalendarEvent:(EWSCalendarEvent*) elem
{
    if (![self calendarEvent]) {
        [self setCalendarEvent:[[NSMutableArray<EWSCalendarEvent*> alloc] init]];
    }
    [_calendarEvent addObject:elem];
}

@end

