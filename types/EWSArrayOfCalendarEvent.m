
#import "EWSArrayOfCalendarEvent.h"


@implementation EWSArrayOfCalendarEvent 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfCalendarEvent alloc] initWithClass:[EWSArrayOfCalendarEvent class]];

    [handler elementName   : @"CalendarEvent"
             withNamespace : 't'             withHandler   : [EWSCalendarEvent class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

