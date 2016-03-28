#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFreeBusyView.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfCalendarEvent.h"
#import "../types/MPSEWSFreeBusyViewType.h"
#import "../types/MPSEWSWorkingHours.h"


@implementation MPSEWSFreeBusyView 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFreeBusyView class]];

    [handler property      : @"freeBusyViewType"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FreeBusyViewType"
             withHandler   : [MPSEWSFreeBusyViewType class]];

    [handler property      : @"mergedFreeBusy"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MergedFreeBusy"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"calendarEventArray"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CalendarEventArray"
             withHandler   : [MPSEWSArrayOfCalendarEvent class]];

    [handler property      : @"workingHours"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"WorkingHours"
             withHandler   : [MPSEWSWorkingHours class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFreeBusyView class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FreeBusyView: FreeBusyViewType=%@ MergedFreeBusy=%@ CalendarEventArray=%@ WorkingHours=%@", _freeBusyViewType, _mergedFreeBusy, _calendarEventArray, _workingHours];
}

@end

