#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGroupAttendeeConflictData.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSGroupAttendeeConflictData 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGroupAttendeeConflictData class]];

    [handler property      : @"numberOfMembers"
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembers"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"numberOfMembersAvailable"
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembersAvailable"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"numberOfMembersWithConflict"
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembersWithConflict"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"numberOfMembersWithNoData"
             withNamespace : 't'
             withXmlTag    : @"NumberOfMembersWithNoData"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGroupAttendeeConflictData*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSAttendeeConflictData isValid:val forVersion:ver]) return FALSE;
    if ([val numberOfMembers] && ![MPSEWSIntegerTypeHandler isValid:[val numberOfMembers] forVersion:ver]) return FALSE;
    if ([val numberOfMembersAvailable] && ![MPSEWSIntegerTypeHandler isValid:[val numberOfMembersAvailable] forVersion:ver]) return FALSE;
    if ([val numberOfMembersWithConflict] && ![MPSEWSIntegerTypeHandler isValid:[val numberOfMembersWithConflict] forVersion:ver]) return FALSE;
    if ([val numberOfMembersWithNoData] && ![MPSEWSIntegerTypeHandler isValid:[val numberOfMembersWithNoData] forVersion:ver]) return FALSE;
    return TRUE;
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

