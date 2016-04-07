#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTooBigGroupAttendeeConflictData.h"


@implementation MPSEWSTooBigGroupAttendeeConflictData 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTooBigGroupAttendeeConflictData class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTooBigGroupAttendeeConflictData*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSAttendeeConflictData isValid:val forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTooBigGroupAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TooBigGroupAttendeeConflictData: super=%@", [super description]];
}

@end

