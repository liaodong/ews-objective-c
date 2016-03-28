#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGroupAttendeeConflictData.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSGroupAttendeeConflictData 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGroupAttendeeConflictData class]];

    [handler property      : @"numberOfMembers"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembers"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"numberOfMembersAvailable"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembersAvailable"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"numberOfMembersWithConflict"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembersWithConflict"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"numberOfMembersWithNoData"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembersWithNoData"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGroupAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GroupAttendeeConflictData: NumberOfMembers=%@ NumberOfMembersAvailable=%@ NumberOfMembersWithConflict=%@ NumberOfMembersWithNoData=%@ super=%@", _numberOfMembers, _numberOfMembersAvailable, _numberOfMembersWithConflict, _numberOfMembersWithNoData, [super description]];
}

@end

