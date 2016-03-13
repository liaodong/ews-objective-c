#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSTaskRecurrenceType.h"


@implementation EWSTaskRecurrenceType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTaskRecurrenceType class]];

    [handler property   : @"relativeYearlyRecurrence"
             isRequired : TRUE
             withXmlTag : @"RelativeYearlyRecurrence"
             withHandler: [EWSRelativeYearlyRecurrencePatternType class]];

    [handler property   : @"absoluteYearlyRecurrence"
             isRequired : TRUE
             withXmlTag : @"AbsoluteYearlyRecurrence"
             withHandler: [EWSAbsoluteYearlyRecurrencePatternType class]];

    [handler property   : @"relativeMonthlyRecurrence"
             isRequired : TRUE
             withXmlTag : @"RelativeMonthlyRecurrence"
             withHandler: [EWSRelativeMonthlyRecurrencePatternType class]];

    [handler property   : @"absoluteMonthlyRecurrence"
             isRequired : TRUE
             withXmlTag : @"AbsoluteMonthlyRecurrence"
             withHandler: [EWSAbsoluteMonthlyRecurrencePatternType class]];

    [handler property   : @"weeklyRecurrence"
             isRequired : TRUE
             withXmlTag : @"WeeklyRecurrence"
             withHandler: [EWSWeeklyRecurrencePatternType class]];

    [handler property   : @"dailyRecurrence"
             isRequired : TRUE
             withXmlTag : @"DailyRecurrence"
             withHandler: [EWSDailyRecurrencePatternType class]];

    [handler property   : @"dailyRegeneration"
             isRequired : TRUE
             withXmlTag : @"DailyRegeneration"
             withHandler: [EWSDailyRegeneratingPatternType class]];

    [handler property   : @"weeklyRegeneration"
             isRequired : TRUE
             withXmlTag : @"WeeklyRegeneration"
             withHandler: [EWSWeeklyRegeneratingPatternType class]];

    [handler property   : @"monthlyRegeneration"
             isRequired : TRUE
             withXmlTag : @"MonthlyRegeneration"
             withHandler: [EWSMonthlyRegeneratingPatternType class]];

    [handler property   : @"yearlyRegeneration"
             isRequired : TRUE
             withXmlTag : @"YearlyRegeneration"
             withHandler: [EWSYearlyRegeneratingPatternType class]];

    [handler property   : @"noEndRecurrence"
             isRequired : TRUE
             withXmlTag : @"NoEndRecurrence"
             withHandler: [EWSNoEndRecurrenceRangeType class]];

    [handler property   : @"endDateRecurrence"
             isRequired : TRUE
             withXmlTag : @"EndDateRecurrence"
             withHandler: [EWSEndDateRecurrenceRangeType class]];

    [handler property   : @"numberedRecurrence"
             isRequired : TRUE
             withXmlTag : @"NumberedRecurrence"
             withHandler: [EWSNumberedRecurrenceRangeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSTaskRecurrenceType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TaskRecurrenceType: RelativeYearlyRecurrence=%@ AbsoluteYearlyRecurrence=%@ RelativeMonthlyRecurrence=%@ AbsoluteMonthlyRecurrence=%@ WeeklyRecurrence=%@ DailyRecurrence=%@ DailyRegeneration=%@ WeeklyRegeneration=%@ MonthlyRegeneration=%@ YearlyRegeneration=%@ NoEndRecurrence=%@ EndDateRecurrence=%@ NumberedRecurrence=%@", _relativeYearlyRecurrence, _absoluteYearlyRecurrence, _relativeMonthlyRecurrence, _absoluteMonthlyRecurrence, _weeklyRecurrence, _dailyRecurrence, _dailyRegeneration, _weeklyRegeneration, _monthlyRegeneration, _yearlyRegeneration, _noEndRecurrence, _endDateRecurrence, _numberedRecurrence];
}

@end

