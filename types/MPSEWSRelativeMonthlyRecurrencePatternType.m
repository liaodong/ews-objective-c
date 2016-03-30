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
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"daysOfWeek"
             withNamespace : 't'
             withXmlTag    : @"DaysOfWeek"
             withHandler   : [MPSEWSDayOfWeekType class]];

    [handler property      : @"dayOfWeekIndex"
             withNamespace : 't'
             withXmlTag    : @"DayOfWeekIndex"
             withHandler   : [MPSEWSDayOfWeekIndexType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRelativeMonthlyRecurrencePatternType*) val
{   (void) val;
    return TRUE;
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

