#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfOccurrenceInfoType.h"
#import "../types/MPSEWSOccurrenceInfoType.h"


@implementation MPSEWSNonEmptyArrayOfOccurrenceInfoType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfOccurrenceInfoType class]];

    [handler listProperty  : @"occurrence"
             useSelector   : @"addOccurrence"
             withNamespace : 't'
             withXmlTag    : @"Occurrence"
             withHandler   : [MPSEWSOccurrenceInfoType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfOccurrenceInfoType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val occurrence]) {
        for (MPSEWSOccurrenceInfoType* obj in [val occurrence]) {
            if (![MPSEWSOccurrenceInfoType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfOccurrenceInfoType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfOccurrenceInfoType: Occurrence=%@", _occurrence];
}

- (void) addOccurrence:(MPSEWSOccurrenceInfoType*) elem
{
    if (![self occurrence]) {
        [self setOccurrence:[[NSMutableArray<MPSEWSOccurrenceInfoType*> alloc] init]];
    }
    [_occurrence addObject:elem];
}

@end

