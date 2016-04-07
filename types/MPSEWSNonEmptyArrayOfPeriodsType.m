#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfPeriodsType.h"
#import "../types/MPSEWSPeriodType.h"


@implementation MPSEWSNonEmptyArrayOfPeriodsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfPeriodsType class]];

    [handler listProperty  : @"period"
             useSelector   : @"addPeriod"
             withNamespace : 't'
             withXmlTag    : @"Period"
             withHandler   : [MPSEWSPeriodType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfPeriodsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val period]) {
        for (MPSEWSPeriodType* obj in [val period]) {
            if (![MPSEWSPeriodType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfPeriodsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfPeriodsType: Period=%@", _period];
}

- (void) addPeriod:(MPSEWSPeriodType*) elem
{
    if (![self period]) {
        [self setPeriod:[[NSMutableArray<MPSEWSPeriodType*> alloc] init]];
    }
    [_period addObject:elem];
}

@end

