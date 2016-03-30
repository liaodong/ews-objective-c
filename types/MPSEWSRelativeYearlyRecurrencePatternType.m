#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRelativeYearlyRecurrencePatternType.h"
#import "../types/MPSEWSDayOfWeekIndexType.h"
#import "../types/MPSEWSDayOfWeekType.h"
#import "../types/MPSEWSMonthNamesType.h"


@implementation MPSEWSRelativeYearlyRecurrencePatternType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRelativeYearlyRecurrencePatternType class]];

    [handler property      : @"daysOfWeek"
             withNamespace : 't'
             withXmlTag    : @"DaysOfWeek"
             withHandler   : [MPSEWSDayOfWeekType class]];

    [handler property      : @"dayOfWeekIndex"
             withNamespace : 't'
             withXmlTag    : @"DayOfWeekIndex"
             withHandler   : [MPSEWSDayOfWeekIndexType class]];

    [handler property      : @"month"
             withNamespace : 't'
             withXmlTag    : @"Month"
             withHandler   : [MPSEWSMonthNamesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRelativeYearlyRecurrencePatternType*) val
{   (void) val;
    if (![MPSEWSRecurrencePatternBaseType isValid:val]) return FALSE;
    if ([val daysOfWeek] && ![MPSEWSDayOfWeekType isValid:[val daysOfWeek]]) return FALSE;
    if ([val dayOfWeekIndex] && ![MPSEWSDayOfWeekIndexType isValid:[val dayOfWeekIndex]]) return FALSE;
    if ([val month] && ![MPSEWSMonthNamesType isValid:[val month]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRelativeYearlyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RelativeYearlyRecurrencePatternType: DaysOfWeek=%@ DayOfWeekIndex=%@ Month=%@ super=%@", _daysOfWeek, _dayOfWeekIndex, _month, [super description]];
}

@end

