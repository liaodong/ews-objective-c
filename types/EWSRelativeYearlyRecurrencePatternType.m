#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRelativeYearlyRecurrencePatternType.h"
#import "../types/EWSDayOfWeekIndexType.h"
#import "../types/EWSDayOfWeekType.h"
#import "../types/EWSMonthNamesType.h"


@implementation EWSRelativeYearlyRecurrencePatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRelativeYearlyRecurrencePatternType class]];

    [handler property      : @"daysOfWeek"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DaysOfWeek"
             withHandler   : [EWSDayOfWeekType class]];

    [handler property      : @"dayOfWeekIndex"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DayOfWeekIndex"
             withHandler   : [EWSDayOfWeekIndexType class]];

    [handler property      : @"month"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Month"
             withHandler   : [EWSMonthNamesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSRelativeYearlyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RelativeYearlyRecurrencePatternType: DaysOfWeek=%@ DayOfWeekIndex=%@ Month=%@ super=%@", _daysOfWeek, _dayOfWeekIndex, _month, [super description]];
}

@end

