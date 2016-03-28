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
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DaysOfWeek"
             withHandler   : [MPSEWSDayOfWeekType class]];

    [handler property      : @"dayOfWeekIndex"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DayOfWeekIndex"
             withHandler   : [MPSEWSDayOfWeekIndexType class]];

    [handler property      : @"month"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Month"
             withHandler   : [MPSEWSMonthNamesType class]];

    [handler register];
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

