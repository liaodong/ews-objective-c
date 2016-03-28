#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCalendarEventDetails.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSCalendarEventDetails 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCalendarEventDetails class]];

    [handler property      : @"iD"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ID"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"subject"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Subject"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"location"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Location"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"isMeeting"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"IsMeeting"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isRecurring"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"IsRecurring"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isException"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"IsException"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isReminderSet"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"IsReminderSet"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isPrivate"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"IsPrivate"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCalendarEventDetails class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarEventDetails: ID=%@ Subject=%@ Location=%@ IsMeeting=%@ IsRecurring=%@ IsException=%@ IsReminderSet=%@ IsPrivate=%@", _iD, _subject, _location, _isMeeting, _isRecurring, _isException, _isReminderSet, _isPrivate];
}

@end

