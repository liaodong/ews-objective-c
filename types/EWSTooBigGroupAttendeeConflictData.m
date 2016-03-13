#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSTooBigGroupAttendeeConflictData.h"


@implementation EWSTooBigGroupAttendeeConflictData 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTooBigGroupAttendeeConflictData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSTooBigGroupAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TooBigGroupAttendeeConflictData: super=%@", [super description]];
}

@end

