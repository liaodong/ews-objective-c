#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSIndividualAttendeeConflictData.h"
#import "../types/EWSLegacyFreeBusyType.h"


@implementation EWSIndividualAttendeeConflictData 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIndividualAttendeeConflictData class]];

    [handler property      : @"busyType"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"BusyType"
             withHandler   : [EWSLegacyFreeBusyType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSIndividualAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IndividualAttendeeConflictData: BusyType=%@ super=%@", _busyType, [super description]];
}

@end

