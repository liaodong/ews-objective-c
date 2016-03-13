
#import "EWSNonEmptyArrayOfAttendeesType.h"


@implementation EWSNonEmptyArrayOfAttendeesType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfAttendeesType alloc] initWithClass:[EWSNonEmptyArrayOfAttendeesType class]];

    [handler elementName : @"Attendee"
             withHandler : [EWSAttendeeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

