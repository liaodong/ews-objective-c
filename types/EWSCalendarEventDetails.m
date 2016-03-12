#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSCalendarEventDetails.h"


@implementation EWSCalendarEventDetails 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCalendarEventDetails class]];

    [handler property   : @"iD"
             isRequired : FALSE
             withXmlTag : @"ID"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"subject"
             isRequired : FALSE
             withXmlTag : @"Subject"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"location"
             isRequired : FALSE
             withXmlTag : @"Location"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"isMeeting"
             isRequired : TRUE
             withXmlTag : @"IsMeeting"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isRecurring"
             isRequired : TRUE
             withXmlTag : @"IsRecurring"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isException"
             isRequired : TRUE
             withXmlTag : @"IsException"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isReminderSet"
             isRequired : TRUE
             withXmlTag : @"IsReminderSet"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isPrivate"
             isRequired : TRUE
             withXmlTag : @"IsPrivate"
             withHandler: [EWSBooleanTypeHandler class]];

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

