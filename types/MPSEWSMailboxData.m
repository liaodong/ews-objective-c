#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMailboxData.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSEmailAddress.h"
#import "../types/MPSEWSMeetingAttendeeType.h"


@implementation MPSEWSMailboxData 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMailboxData class]];

    [handler property      : @"email"
             withNamespace : 't'
             withXmlTag    : @"Email"
             withHandler   : [MPSEWSEmailAddress class]];

    [handler property      : @"attendeeType"
             withNamespace : 't'
             withXmlTag    : @"AttendeeType"
             withHandler   : [MPSEWSMeetingAttendeeType class]];

    [handler property      : @"excludeConflicts"
             withNamespace : 't'
             withXmlTag    : @"ExcludeConflicts"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMailboxData*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMailboxData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MailboxData: Email=%@ AttendeeType=%@ ExcludeConflicts=%@", _email, _attendeeType, _excludeConflicts];
}

@end

