#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSIndividualAttendeeConflictData.h"
#import "../types/MPSEWSLegacyFreeBusyType.h"


@implementation MPSEWSIndividualAttendeeConflictData 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSIndividualAttendeeConflictData class]];

    [handler property      : @"busyType"
             withNamespace : 't'
             withXmlTag    : @"BusyType"
             withHandler   : [MPSEWSLegacyFreeBusyType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSIndividualAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IndividualAttendeeConflictData: BusyType=%@ super=%@", _busyType, [super description]];
}

@end

