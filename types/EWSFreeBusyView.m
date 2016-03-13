#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFreeBusyView.h"


@implementation EWSFreeBusyView 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFreeBusyView class]];

    [handler property      : @"freeBusyViewType"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FreeBusyViewType"
             withHandler   : [EWSFreeBusyViewType class]];

    [handler property      : @"mergedFreeBusy"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MergedFreeBusy"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"calendarEventArray"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CalendarEventArray"
             withHandler   : [EWSArrayOfCalendarEvent class]];

    [handler property      : @"workingHours"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"WorkingHours"
             withHandler   : [EWSWorkingHours class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFreeBusyView class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FreeBusyView: FreeBusyViewType=%@ MergedFreeBusy=%@ CalendarEventArray=%@ WorkingHours=%@", _freeBusyViewType, _mergedFreeBusy, _calendarEventArray, _workingHours];
}

@end

