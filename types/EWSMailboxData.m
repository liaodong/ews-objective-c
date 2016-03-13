#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMailboxData.h"


@implementation EWSMailboxData 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMailboxData class]];

    [handler property   : @"email"
             isRequired : TRUE
             withXmlTag : @"Email"
             withHandler: [EWSEmailAddress class]];

    [handler property   : @"attendeeType"
             isRequired : TRUE
             withXmlTag : @"AttendeeType"
             withHandler: [EWSMeetingAttendeeType class]];

    [handler property   : @"excludeConflicts"
             isRequired : FALSE
             withXmlTag : @"ExcludeConflicts"
             withHandler: [EWSBooleanTypeHandler class]];

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

