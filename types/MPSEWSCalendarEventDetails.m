#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCalendarEventDetails.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSCalendarEventDetails 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCalendarEventDetails class]];

    [handler property      : @"iD"
             withNamespace : 't'
             withXmlTag    : @"ID"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"subject"
             withNamespace : 't'
             withXmlTag    : @"Subject"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"location"
             withNamespace : 't'
             withXmlTag    : @"Location"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"isMeeting"
             withNamespace : 't'
             withXmlTag    : @"IsMeeting"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isRecurring"
             withNamespace : 't'
             withXmlTag    : @"IsRecurring"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isException"
             withNamespace : 't'
             withXmlTag    : @"IsException"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isReminderSet"
             withNamespace : 't'
             withXmlTag    : @"IsReminderSet"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isPrivate"
             withNamespace : 't'
             withXmlTag    : @"IsPrivate"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCalendarEventDetails*) val
{   (void) val;
    if ([val iD  ] && ![MPSEWSStringTypeHandler isValid:[val iD  ]]) return FALSE;
    if ([val subject] && ![MPSEWSStringTypeHandler isValid:[val subject]]) return FALSE;
    if ([val location] && ![MPSEWSStringTypeHandler isValid:[val location]]) return FALSE;
    if ([val isMeeting] && ![MPSEWSBooleanTypeHandler isValid:[val isMeeting]]) return FALSE;
    if ([val isRecurring] && ![MPSEWSBooleanTypeHandler isValid:[val isRecurring]]) return FALSE;
    if ([val isException] && ![MPSEWSBooleanTypeHandler isValid:[val isException]]) return FALSE;
    if ([val isReminderSet] && ![MPSEWSBooleanTypeHandler isValid:[val isReminderSet]]) return FALSE;
    if ([val isPrivate] && ![MPSEWSBooleanTypeHandler isValid:[val isPrivate]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCalendarEventDetails class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarEventDetails: ID=%@ Subject=%@ Location=%@ IsMeeting=%@ IsRecurring=%@ IsException=%@ IsReminderSet=%@ IsPrivate=%@", _iD, _subject, _location, _isMeeting, _isRecurring, _isException, _isReminderSet, _isPrivate];
}

@end

