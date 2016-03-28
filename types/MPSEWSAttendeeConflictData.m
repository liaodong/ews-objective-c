#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAttendeeConflictData.h"


@implementation MPSEWSAttendeeConflictData 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAttendeeConflictData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttendeeConflictData:"];
}

@end

