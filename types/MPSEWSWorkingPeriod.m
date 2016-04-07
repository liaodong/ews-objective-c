#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSWorkingPeriod.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSDaysOfWeekType.h"


@implementation MPSEWSWorkingPeriod 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSWorkingPeriod class]];

    [handler property      : @"dayOfWeek"
             withNamespace : 't'
             withXmlTag    : @"DayOfWeek"
             withHandler   : [MPSEWSDaysOfWeekType class]];

    [handler property      : @"startTimeInMinutes"
             withNamespace : 't'
             withXmlTag    : @"StartTimeInMinutes"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"endTimeInMinutes"
             withNamespace : 't'
             withXmlTag    : @"EndTimeInMinutes"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSWorkingPeriod*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val dayOfWeek] && ![MPSEWSDaysOfWeekType isValid:[val dayOfWeek] forVersion:ver]) return FALSE;
    if ([val startTimeInMinutes] && ![MPSEWSIntegerTypeHandler isValid:[val startTimeInMinutes] forVersion:ver]) return FALSE;
    if ([val endTimeInMinutes] && ![MPSEWSIntegerTypeHandler isValid:[val endTimeInMinutes] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSWorkingPeriod class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"WorkingPeriod: DayOfWeek=%@ StartTimeInMinutes=%@ EndTimeInMinutes=%@", _dayOfWeek, _startTimeInMinutes, _endTimeInMinutes];
}

@end

