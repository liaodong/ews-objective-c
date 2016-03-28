#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGroupAttendeeConflictData.h"
#import "../handlers/EWSIntegerTypeHandler.h"


@implementation EWSGroupAttendeeConflictData 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGroupAttendeeConflictData class]];

    [handler property      : @"numberOfMembers"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembers"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"numberOfMembersAvailable"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembersAvailable"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"numberOfMembersWithConflict"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembersWithConflict"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"numberOfMembersWithNoData"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembersWithNoData"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGroupAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GroupAttendeeConflictData: NumberOfMembers=%@ NumberOfMembersAvailable=%@ NumberOfMembersWithConflict=%@ NumberOfMembersWithNoData=%@ super=%@", _numberOfMembers, _numberOfMembersAvailable, _numberOfMembersWithConflict, _numberOfMembersWithNoData, [super description]];
}

@end

