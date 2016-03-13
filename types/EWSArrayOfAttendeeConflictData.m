#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfAttendeeConflictData.h"


@implementation EWSArrayOfAttendeeConflictData 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfAttendeeConflictData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfAttendeeConflictData:"];
}

@end

