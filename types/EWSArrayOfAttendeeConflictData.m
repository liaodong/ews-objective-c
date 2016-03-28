#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfAttendeeConflictData.h"
#import "../types/EWSGroupAttendeeConflictData.h"
#import "../types/EWSIndividualAttendeeConflictData.h"
#import "../types/EWSTooBigGroupAttendeeConflictData.h"
#import "../types/EWSUnknownAttendeeConflictData.h"


@implementation EWSArrayOfAttendeeConflictData 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfAttendeeConflictData class]];

    [handler property      : @"unknownAttendeeConflictData"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UnknownAttendeeConflictData"
             withHandler   : [EWSUnknownAttendeeConflictData class]];

    [handler property      : @"individualAttendeeConflictData"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"IndividualAttendeeConflictData"
             withHandler   : [EWSIndividualAttendeeConflictData class]];

    [handler property      : @"tooBigGroupAttendeeConflictData"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TooBigGroupAttendeeConflictData"
             withHandler   : [EWSTooBigGroupAttendeeConflictData class]];

    [handler property      : @"groupAttendeeConflictData"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"GroupAttendeeConflictData"
             withHandler   : [EWSGroupAttendeeConflictData class]];

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
    return [NSString stringWithFormat:@"ArrayOfAttendeeConflictData: UnknownAttendeeConflictData=%@ IndividualAttendeeConflictData=%@ TooBigGroupAttendeeConflictData=%@ GroupAttendeeConflictData=%@", _unknownAttendeeConflictData, _individualAttendeeConflictData, _tooBigGroupAttendeeConflictData, _groupAttendeeConflictData];
}

@end

