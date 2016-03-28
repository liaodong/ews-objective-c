#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMailboxData.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSEmailAddress.h"
#import "../types/EWSMeetingAttendeeType.h"


@implementation EWSMailboxData 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMailboxData class]];

    [handler property      : @"email"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Email"
             withHandler   : [EWSEmailAddress class]];

    [handler property      : @"attendeeType"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AttendeeType"
             withHandler   : [EWSMeetingAttendeeType class]];

    [handler property      : @"excludeConflicts"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ExcludeConflicts"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSMailboxData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MailboxData: Email=%@ AttendeeType=%@ ExcludeConflicts=%@", _email, _attendeeType, _excludeConflicts];
}

@end

