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

+ (BOOL) isValid:(MPSEWSMailboxData*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val email] && ![MPSEWSEmailAddress isValid:[val email] forVersion:ver]) return FALSE;
    if ([val attendeeType] && ![MPSEWSMeetingAttendeeType isValid:[val attendeeType] forVersion:ver]) return FALSE;
    if ([val excludeConflicts] && ![MPSEWSBooleanTypeHandler isValid:[val excludeConflicts] forVersion:ver]) return FALSE;
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

