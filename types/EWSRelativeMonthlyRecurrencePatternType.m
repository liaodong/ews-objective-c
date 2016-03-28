#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRelativeMonthlyRecurrencePatternType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../types/EWSDayOfWeekIndexType.h"
#import "../types/EWSDayOfWeekType.h"


@implementation EWSRelativeMonthlyRecurrencePatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRelativeMonthlyRecurrencePatternType class]];

    [handler property      : @"interval"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [EWSIntegerTypeHandler class]];

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

