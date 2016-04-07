#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSWeeklyRecurrencePatternType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSDayOfWeekType.h"
#import "../types/MPSEWSDaysOfWeekType.h"


@implementation MPSEWSWeeklyRecurrencePatternType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSWeeklyRecurrencePatternType class]];

    [handler property      : @"interval"
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"daysOfWeek"
             withNamespace : 't'
             withXmlTag    : @"DaysOfWeek"
             withHandler   : [MPSEWSDaysOfWeekType class]];

    [handler property      : @"firstDayOfWeek"
             withNamespace : 't'
             withXmlTag    : @"FirstDayOfWeek"
             withHandler   : [MPSEWSDayOfWeekType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSWeeklyRecurrencePatternType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSIntervalRecurrencePatternBaseType isValid:val forVersion:ver]) return FALSE;
    if ([val daysOfWeek] && ![MPSEWSDaysOfWeekType isValid:[val daysOfWeek] forVersion:ver]) return FALSE;
    if ([val firstDayOfWeek] && ![MPSEWSDayOfWeekType isValid:[val firstDayOfWeek] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSWeeklyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"WeeklyRecurrencePatternType: DaysOfWeek=%@ FirstDayOfWeek=%@ super=%@", _daysOfWeek, _firstDayOfWeek, [super description]];
}

@end

