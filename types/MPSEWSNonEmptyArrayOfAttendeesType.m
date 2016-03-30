#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfAttendeesType.h"
#import "../types/MPSEWSAttendeeType.h"


@implementation MPSEWSNonEmptyArrayOfAttendeesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfAttendeesType class]];

    [handler listProperty  : @"attendee"
             useSelector   : @"addAttendee"
             withNamespace : 't'
             withXmlTag    : @"Attendee"
             withHandler   : [MPSEWSAttendeeType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfAttendeesType*) val
{   (void) val;
    if ([val attendee]) {
        for (MPSEWSAttendeeType* obj in [val attendee]) {
            if (![MPSEWSAttendeeType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
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

