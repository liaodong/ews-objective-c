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
             useSelector   : @"addUnknownAttendeeConflictData"
             withNamespace : 't'
             withXmlTag    : @"UnknownAttendeeConflictData"
             withHandler   : [MPSEWSUnknownAttendeeConflictData class]];

    [handler listProperty  : @"individualAttendeeConflictData"
             useSelector   : @"addIndividualAttendeeConflictData"
             withNamespace : 't'
             withXmlTag    : @"IndividualAttendeeConflictData"
             withHandler   : [MPSEWSIndividualAttendeeConflictData class]];

    [handler listProperty  : @"tooBigGroupAttendeeConflictData"
             useSelector   : @"addTooBigGroupAttendeeConflictData"
             withNamespace : 't'
             withXmlTag    : @"TooBigGroupAttendeeConflictData"
             withHandler   : [MPSEWSTooBigGroupAttendeeConflictData class]];

    [handler listProperty  : @"groupAttendeeConflictData"
             useSelector   : @"addGroupAttendeeConflictData"
             withNamespace : 't'
             withXmlTag    : @"GroupAttendeeConflictData"
             withHandler   : [MPSEWSGroupAttendeeConflictData class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfAttendeeConflictData*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val unknownAttendeeConflictData]) {
        for (MPSEWSUnknownAttendeeConflictData* obj in [val unknownAttendeeConflictData]) {
            if (![MPSEWSUnknownAttendeeConflictData isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val individualAttendeeConflictData]) {
        for (MPSEWSIndividualAttendeeConflictData* obj in [val individualAttendeeConflictData]) {
            if (![MPSEWSIndividualAttendeeConflictData isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val tooBigGroupAttendeeConflictData]) {
        for (MPSEWSTooBigGroupAttendeeConflictData* obj in [val tooBigGroupAttendeeConflictData]) {
            if (![MPSEWSTooBigGroupAttendeeConflictData isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val groupAttendeeConflictData]) {
        for (MPSEWSGroupAttendeeConflictData* obj in [val groupAttendeeConflictData]) {
            if (![MPSEWSGroupAttendeeConflictData isValid:obj forVersion:ver]) return FALSE;
        }
    }
    return TRUE;
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

