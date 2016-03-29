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

    [handler listProperty  : @"unknownAttendeeConflictData"
             isNonEmpty    : TRUE
             useSelector   : @"addUnknownAttendeeConflictData"
             withNamespace : 't'
             withXmlTag    : @"UnknownAttendeeConflictData"
             withHandler   : [MPSEWSUnknownAttendeeConflictData class]];

    [handler listProperty  : @"individualAttendeeConflictData"
             isNonEmpty    : TRUE
             useSelector   : @"addIndividualAttendeeConflictData"
             withNamespace : 't'
             withXmlTag    : @"IndividualAttendeeConflictData"
             withHandler   : [MPSEWSIndividualAttendeeConflictData class]];

    [handler listProperty  : @"tooBigGroupAttendeeConflictData"
             isNonEmpty    : TRUE
             useSelector   : @"addTooBigGroupAttendeeConflictData"
             withNamespace : 't'
             withXmlTag    : @"TooBigGroupAttendeeConflictData"
             withHandler   : [MPSEWSTooBigGroupAttendeeConflictData class]];

    [handler listProperty  : @"groupAttendeeConflictData"
             isNonEmpty    : TRUE
             useSelector   : @"addGroupAttendeeConflictData"
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

- (void) addUnknownAttendeeConflictData:(MPSEWSUnknownAttendeeConflictData*) elem
{
    if (![self unknownAttendeeConflictData]) {
        [self setUnknownAttendeeConflictData:[[NSMutableArray<MPSEWSUnknownAttendeeConflictData*> alloc] init]];
    }
    [_unknownAttendeeConflictData addObject:elem];
}

- (void) addIndividualAttendeeConflictData:(MPSEWSIndividualAttendeeConflictData*) elem
{
    if (![self individualAttendeeConflictData]) {
        [self setIndividualAttendeeConflictData:[[NSMutableArray<MPSEWSIndividualAttendeeConflictData*> alloc] init]];
    }
    [_individualAttendeeConflictData addObject:elem];
}

- (void) addTooBigGroupAttendeeConflictData:(MPSEWSTooBigGroupAttendeeConflictData*) elem
{
    if (![self tooBigGroupAttendeeConflictData]) {
        [self setTooBigGroupAttendeeConflictData:[[NSMutableArray<MPSEWSTooBigGroupAttendeeConflictData*> alloc] init]];
    }
    [_tooBigGroupAttendeeConflictData addObject:elem];
}

- (void) addGroupAttendeeConflictData:(MPSEWSGroupAttendeeConflictData*) elem
{
    if (![self groupAttendeeConflictData]) {
        [self setGroupAttendeeConflictData:[[NSMutableArray<MPSEWSGroupAttendeeConflictData*> alloc] init]];
    }
    [_groupAttendeeConflictData addObject:elem];
}

@end

