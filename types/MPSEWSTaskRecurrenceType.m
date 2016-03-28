#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTaskRecurrenceType.h"
#import "../types/MPSEWSAbsoluteMonthlyRecurrencePatternType.h"
#import "../types/MPSEWSAbsoluteYearlyRecurrencePatternType.h"
#import "../types/MPSEWSDailyRecurrencePatternType.h"
#import "../types/MPSEWSDailyRegeneratingPatternType.h"
#import "../types/MPSEWSEndDateRecurrenceRangeType.h"
#import "../types/MPSEWSMonthlyRegeneratingPatternType.h"
#import "../types/MPSEWSNoEndRecurrenceRangeType.h"
#import "../types/MPSEWSNumberedRecurrenceRangeType.h"
#import "../types/MPSEWSRelativeMonthlyRecurrencePatternType.h"
#import "../types/MPSEWSRelativeYearlyRecurrencePatternType.h"
#import "../types/MPSEWSWeeklyRecurrencePatternType.h"
#import "../types/MPSEWSWeeklyRegeneratingPatternType.h"
#import "../types/MPSEWSYearlyRegeneratingPatternType.h"


@implementation MPSEWSTaskRecurrenceType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTaskRecurrenceType class]];

    [handler property      : @"relativeYearlyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"RelativeYearlyRecurrence"
             withHandler   : [MPSEWSRelativeYearlyRecurrencePatternType class]];

    [handler property      : @"absoluteYearlyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AbsoluteYearlyRecurrence"
             withHandler   : [MPSEWSAbsoluteYearlyRecurrencePatternType class]];

    [handler property      : @"relativeMonthlyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"RelativeMonthlyRecurrence"
             withHandler   : [MPSEWSRelativeMonthlyRecurrencePatternType class]];

    [handler property      : @"absoluteMonthlyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AbsoluteMonthlyRecurrence"
             withHandler   : [MPSEWSAbsoluteMonthlyRecurrencePatternType class]];

    [handler property      : @"weeklyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"WeeklyRecurrence"
             withHandler   : [MPSEWSWeeklyRecurrencePatternType class]];

    [handler property      : @"dailyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DailyRecurrence"
             withHandler   : [MPSEWSDailyRecurrencePatternType class]];

    [handler property      : @"dailyRegeneration"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DailyRegeneration"
             withHandler   : [MPSEWSDailyRegeneratingPatternType class]];

    [handler property      : @"weeklyRegeneration"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"WeeklyRegeneration"
             withHandler   : [MPSEWSWeeklyRegeneratingPatternType class]];

    [handler property      : @"monthlyRegeneration"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MonthlyRegeneration"
             withHandler   : [MPSEWSMonthlyRegeneratingPatternType class]];

    [handler property      : @"yearlyRegeneration"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"YearlyRegeneration"
             withHandler   : [MPSEWSYearlyRegeneratingPatternType class]];

    [handler property      : @"noEndRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NoEndRecurrence"
             withHandler   : [MPSEWSNoEndRecurrenceRangeType class]];

    [handler property      : @"endDateRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"EndDateRecurrence"
             withHandler   : [MPSEWSEndDateRecurrenceRangeType class]];

    [handler property      : @"numberedRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"NumberedRecurrence"
             withHandler   : [MPSEWSNumberedRecurrenceRangeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTaskRecurrenceType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TaskRecurrenceType: RelativeYearlyRecurrence=%@ AbsoluteYearlyRecurrence=%@ RelativeMonthlyRecurrence=%@ AbsoluteMonthlyRecurrence=%@ WeeklyRecurrence=%@ DailyRecurrence=%@ DailyRegeneration=%@ WeeklyRegeneration=%@ MonthlyRegeneration=%@ YearlyRegeneration=%@ NoEndRecurrence=%@ EndDateRecurrence=%@ NumberedRecurrence=%@", _relativeYearlyRecurrence, _absoluteYearlyRecurrence, _relativeMonthlyRecurrence, _absoluteMonthlyRecurrence, _weeklyRecurrence, _dailyRecurrence, _dailyRegeneration, _weeklyRegeneration, _monthlyRegeneration, _yearlyRegeneration, _noEndRecurrence, _endDateRecurrence, _numberedRecurrence];
}

@end

