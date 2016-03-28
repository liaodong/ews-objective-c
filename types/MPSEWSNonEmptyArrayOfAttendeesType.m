#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfAttendeesType.h"
#import "../types/MPSEWSAttendeeType.h"


@implementation MPSEWSNonEmptyArrayOfAttendeesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfAttendeesType class]];

    [handler listProperty  : @"attendee"
             isNonEmpty    : TRUE
             useSelector   : @"addAttendee"
             withNamespace : 't'
             withXmlTag    : @"Attendee"
             withHandler   : [MPSEWSAttendeeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfAttendeesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfAttendeesType: Attendee=%@", _attendee];
}

- (void) addAttendee:(MPSEWSAttendeeType*) elem
{
    if (![self attendee]) {
        [self setAttendee:[[NSMutableArray<MPSEWSAttendeeType*> alloc] init]];
    }
    [_attendee addObject:elem];
}

@end

