#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSUnknownAttendeeConflictData.h"


@implementation EWSUnknownAttendeeConflictData 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSUnknownAttendeeConflictData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSUnknownAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UnknownAttendeeConflictData: super=%@", [super description]];
}

@end

