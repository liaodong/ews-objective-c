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
             withNamespace : 't'
             withXmlTag    : @"RelativeYearlyRecurrence"
             withHandler   : [MPSEWSRelativeYearlyRecurrencePatternType class]];

    [handler property      : @"absoluteYearlyRecurrence"
             withNamespace : 't'
             withXmlTag    : @"AbsoluteYearlyRecurrence"
             withHandler   : [MPSEWSAbsoluteYearlyRecurrencePatternType class]];

    [handler property      : @"relativeMonthlyRecurrence"
             withNamespace : 't'
             withXmlTag    : @"RelativeMonthlyRecurrence"
             withHandler   : [MPSEWSRelativeMonthlyRecurrencePatternType class]];

    [handler property      : @"absoluteMonthlyRecurrence"
             withNamespace : 't'
             withXmlTag    : @"AbsoluteMonthlyRecurrence"
             withHandler   : [MPSEWSAbsoluteMonthlyRecurrencePatternType class]];

    [handler property      : @"weeklyRecurrence"
             withNamespace : 't'
             withXmlTag    : @"WeeklyRecurrence"
             withHandler   : [MPSEWSWeeklyRecurrencePatternType class]];

    [handler property      : @"dailyRecurrence"
             withNamespace : 't'
             withXmlTag    : @"DailyRecurrence"
             withHandler   : [MPSEWSDailyRecurrencePatternType class]];

    [handler property      : @"dailyRegeneration"
             withNamespace : 't'
             withXmlTag    : @"DailyRegeneration"
             withHandler   : [MPSEWSDailyRegeneratingPatternType class]];

    [handler property      : @"weeklyRegeneration"
             withNamespace : 't'
             withXmlTag    : @"WeeklyRegeneration"
             withHandler   : [MPSEWSWeeklyRegeneratingPatternType class]];

    [handler property      : @"monthlyRegeneration"
             withNamespace : 't'
             withXmlTag    : @"MonthlyRegeneration"
             withHandler   : [MPSEWSMonthlyRegeneratingPatternType class]];

    [handler property      : @"yearlyRegeneration"
             withNamespace : 't'
             withXmlTag    : @"YearlyRegeneration"
             withHandler   : [MPSEWSYearlyRegeneratingPatternType class]];

    [handler property      : @"noEndRecurrence"
             withNamespace : 't'
             withXmlTag    : @"NoEndRecurrence"
             withHandler   : [MPSEWSNoEndRecurrenceRangeType class]];

    [handler property      : @"endDateRecurrence"
             withNamespace : 't'
             withXmlTag    : @"EndDateRecurrence"
             withHandler   : [MPSEWSEndDateRecurrenceRangeType class]];

    [handler property      : @"numberedRecurrence"
             withNamespace : 't'
             withXmlTag    : @"NumberedRecurrence"
             withHandler   : [MPSEWSNumberedRecurrenceRangeType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTaskRecurrenceType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val relativeYearlyRecurrence] && ![MPSEWSRelativeYearlyRecurrencePatternType isValid:[val relativeYearlyRecurrence] forVersion:ver]) return FALSE;
    if ([val absoluteYearlyRecurrence] && ![MPSEWSAbsoluteYearlyRecurrencePatternType isValid:[val absoluteYearlyRecurrence] forVersion:ver]) return FALSE;
    if ([val relativeMonthlyRecurrence] && ![MPSEWSRelativeMonthlyRecurrencePatternType isValid:[val relativeMonthlyRecurrence] forVersion:ver]) return FALSE;
    if ([val absoluteMonthlyRecurrence] && ![MPSEWSAbsoluteMonthlyRecurrencePatternType isValid:[val absoluteMonthlyRecurrence] forVersion:ver]) return FALSE;
    if ([val weeklyRecurrence] && ![MPSEWSWeeklyRecurrencePatternType isValid:[val weeklyRecurrence] forVersion:ver]) return FALSE;
    if ([val dailyRecurrence] && ![MPSEWSDailyRecurrencePatternType isValid:[val dailyRecurrence] forVersion:ver]) return FALSE;
    if ([val dailyRegeneration] && ![MPSEWSDailyRegeneratingPatternType isValid:[val dailyRegeneration] forVersion:ver]) return FALSE;
    if ([val weeklyRegeneration] && ![MPSEWSWeeklyRegeneratingPatternType isValid:[val weeklyRegeneration] forVersion:ver]) return FALSE;
    if ([val monthlyRegeneration] && ![MPSEWSMonthlyRegeneratingPatternType isValid:[val monthlyRegeneration] forVersion:ver]) return FALSE;
    if ([val yearlyRegeneration] && ![MPSEWSYearlyRegeneratingPatternType isValid:[val yearlyRegeneration] forVersion:ver]) return FALSE;
    if ([val noEndRecurrence] && ![MPSEWSNoEndRecurrenceRangeType isValid:[val noEndRecurrence] forVersion:ver]) return FALSE;
    if ([val endDateRecurrence] && ![MPSEWSEndDateRecurrenceRangeType isValid:[val endDateRecurrence] forVersion:ver]) return FALSE;
    if ([val numberedRecurrence] && ![MPSEWSNumberedRecurrenceRangeType isValid:[val numberedRecurrence] forVersion:ver]) return FALSE;
    return TRUE;
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

