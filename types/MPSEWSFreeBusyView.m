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
             withNamespace : 't'
             withXmlTag    : @"FreeBusyViewType"
             withHandler   : [MPSEWSFreeBusyViewType class]];

    [handler property      : @"mergedFreeBusy"
             withNamespace : 't'
             withXmlTag    : @"MergedFreeBusy"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"calendarEventArray"
             withNamespace : 't'
             withXmlTag    : @"CalendarEventArray"
             withHandler   : [MPSEWSArrayOfCalendarEvent class]];

    [handler property      : @"workingHours"
             withNamespace : 't'
             withXmlTag    : @"WorkingHours"
             withHandler   : [MPSEWSWorkingHours class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFreeBusyView*) val
{   (void) val;
    if ([val freeBusyViewType] && ![MPSEWSFreeBusyViewType isValid:[val freeBusyViewType]]) return FALSE;
    if ([val mergedFreeBusy] && ![MPSEWSStringTypeHandler isValid:[val mergedFreeBusy]]) return FALSE;
    if ([val calendarEventArray] && ![MPSEWSArrayOfCalendarEvent isValid:[val calendarEventArray]]) return FALSE;
    if ([val workingHours] && ![MPSEWSWorkingHours isValid:[val workingHours]]) return FALSE;
    return TRUE;
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

