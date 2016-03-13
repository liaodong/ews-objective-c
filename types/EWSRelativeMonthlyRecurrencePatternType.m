#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRelativeMonthlyRecurrencePatternType.h"


@implementation EWSRelativeMonthlyRecurrencePatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRelativeMonthlyRecurrencePatternType class]];

    [handler property   : @"interval"
             isRequired : TRUE
             withXmlTag : @"Interval"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"daysOfWeek"
             isRequired : TRUE
             withXmlTag : @"DaysOfWeek"
             withHandler: [EWSDayOfWeekType class]];

    [handler property   : @"dayOfWeekIndex"
             isRequired : TRUE
             withXmlTag : @"DayOfWeekIndex"
             withHandler: [EWSDayOfWeekIndexType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSRelativeMonthlyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RelativeMonthlyRecurrencePatternType: DaysOfWeek=%@ DayOfWeekIndex=%@ super=%@", _daysOfWeek, _dayOfWeekIndex, [super description]];
}

@end

