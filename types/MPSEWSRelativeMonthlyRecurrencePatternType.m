#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRelativeMonthlyRecurrencePatternType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSDayOfWeekIndexType.h"
#import "../types/MPSEWSDayOfWeekType.h"


@implementation MPSEWSRelativeMonthlyRecurrencePatternType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRelativeMonthlyRecurrencePatternType class]];

    [handler property      : @"interval"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

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

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRelativeMonthlyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RelativeMonthlyRecurrencePatternType: DaysOfWeek=%@ DayOfWeekIndex=%@ super=%@", _daysOfWeek, _dayOfWeekIndex, [super description]];
}

@end

