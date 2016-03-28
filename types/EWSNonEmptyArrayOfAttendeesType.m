#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfAttendeesType.h"
#import "../types/EWSAttendeeType.h"


@implementation EWSNonEmptyArrayOfAttendeesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfAttendeesType class]];

    [handler listProperty  : @"attendee"
             isNonEmpty    : TRUE
             useSelector   : @"addAttendee"
             withNamespace : 't'
             withXmlTag    : @"Attendee"
             withHandler   : [EWSAttendeeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfAttendeesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfAttendeesType: Attendee=%@", _attendee];
}

- (void) addAttendee:(EWSAttendeeType*) elem
{
    if (![self attendee]) {
        [self setAttendee:[[NSMutableArray<EWSAttendeeType*> alloc] init]];
    }
    [_attendee addObject:elem];
}

@end

