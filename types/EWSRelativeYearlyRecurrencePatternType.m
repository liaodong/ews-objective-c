#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRelativeYearlyRecurrencePatternType.h"


@implementation EWSRelativeYearlyRecurrencePatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRelativeYearlyRecurrencePatternType class]];

    [handler property   : @"daysOfWeek"
             isRequired : TRUE
             withXmlTag : @"DaysOfWeek"
             withHandler: [EWSDayOfWeekType class]];

    [handler property   : @"dayOfWeekIndex"
             isRequired : TRUE
             withXmlTag : @"DayOfWeekIndex"
             withHandler: [EWSDayOfWeekIndexType class]];

    [handler property   : @"month"
             isRequired : TRUE
             withXmlTag : @"Month"
             withHandler: [EWSMonthNamesType class]];

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

