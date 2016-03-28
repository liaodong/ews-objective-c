#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfAttendeeConflictData.h"
#import "../types/MPSEWSGroupAttendeeConflictData.h"
#import "../types/MPSEWSIndividualAttendeeConflictData.h"
#import "../types/MPSEWSTooBigGroupAttendeeConflictData.h"
#import "../types/MPSEWSUnknownAttendeeConflictData.h"


@implementation MPSEWSArrayOfAttendeeConflictData 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfAttendeeConflictData class]];

    [handler property      : @"unknownAttendeeConflictData"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UnknownAttendeeConflictData"
             withHandler   : [MPSEWSUnknownAttendeeConflictData class]];

    [handler property      : @"individualAttendeeConflictData"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"IndividualAttendeeConflictData"
             withHandler   : [MPSEWSIndividualAttendeeConflictData class]];

    [handler property      : @"tooBigGroupAttendeeConflictData"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TooBigGroupAttendeeConflictData"
             withHandler   : [MPSEWSTooBigGroupAttendeeConflictData class]];

    [handler property      : @"groupAttendeeConflictData"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"GroupAttendeeConflictData"
             withHandler   : [MPSEWSGroupAttendeeConflictData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfAttendeeConflictData: UnknownAttendeeConflictData=%@ IndividualAttendeeConflictData=%@ TooBigGroupAttendeeConflictData=%@ GroupAttendeeConflictData=%@", _unknownAttendeeConflictData, _individualAttendeeConflictData, _tooBigGroupAttendeeConflictData, _groupAttendeeConflictData];
}

@end

