#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRecurrenceType.h"


@implementation EWSRecurrenceType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRecurrenceType class]];

    [handler property      : @"relativeYearlyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"RelativeYearlyRecurrence"
             withHandler   : [EWSRelativeYearlyRecurrencePatternType class]];

    [handler property      : @"absoluteYearlyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AbsoluteYearlyRecurrence"
             withHandler   : [EWSAbsoluteYearlyRecurrencePatternType class]];

    [handler property      : @"relativeMonthlyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"RelativeMonthlyRecurrence"
             withHandler   : [EWSRelativeMonthlyRecurrencePatternType class]];

    [handler property      : @"absoluteMonthlyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AbsoluteMonthlyRecurrence"
             withHandler   : [EWSAbsoluteMonthlyRecurrencePatternType class]];

    [handler property      : @"weeklyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"WeeklyRecurrence"
             withHandler   : [EWSWeeklyRecurrencePatternType class]];

    [handler property      : @"dailyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DailyRecurrence"
             withHandler   : [EWSDailyRecurrencePatternType class]];

    [handler property      : @"noEndRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NoEndRecurrence"
             withHandler   : [EWSNoEndRecurrenceRangeType class]];

    [handler property      : @"endDateRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"EndDateRecurrence"
             withHandler   : [EWSEndDateRecurrenceRangeType class]];

    [handler property      : @"numberedRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NumberedRecurrence"
             withHandler   : [EWSNumberedRecurrenceRangeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSRecurrenceType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecurrenceType: RelativeYearlyRecurrence=%@ AbsoluteYearlyRecurrence=%@ RelativeMonthlyRecurrence=%@ AbsoluteMonthlyRecurrence=%@ WeeklyRecurrence=%@ DailyRecurrence=%@ NoEndRecurrence=%@ EndDateRecurrence=%@ NumberedRecurrence=%@", _relativeYearlyRecurrence, _absoluteYearlyRecurrence, _relativeMonthlyRecurrence, _absoluteMonthlyRecurrence, _weeklyRecurrence, _dailyRecurrence, _noEndRecurrence, _endDateRecurrence, _numberedRecurrence];
}

@end

