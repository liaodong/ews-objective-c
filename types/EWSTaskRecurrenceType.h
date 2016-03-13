#import <Foundation/Foundation.h>




#import "../types/EWSAbsoluteMonthlyRecurrencePatternType.h"
#import "../types/EWSAbsoluteYearlyRecurrencePatternType.h"
#import "../types/EWSDailyRecurrencePatternType.h"
#import "../types/EWSDailyRegeneratingPatternType.h"
#import "../types/EWSEndDateRecurrenceRangeType.h"
#import "../types/EWSMonthlyRegeneratingPatternType.h"
#import "../types/EWSNoEndRecurrenceRangeType.h"
#import "../types/EWSNumberedRecurrenceRangeType.h"
#import "../types/EWSRelativeMonthlyRecurrencePatternType.h"
#import "../types/EWSRelativeYearlyRecurrencePatternType.h"
#import "../types/EWSWeeklyRecurrencePatternType.h"
#import "../types/EWSWeeklyRegeneratingPatternType.h"
#import "../types/EWSYearlyRegeneratingPatternType.h"



/* TaskRecurrenceType */
@interface EWSTaskRecurrenceType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSRelativeYearlyRecurrencePatternType*  relativeYearlyRecurrence;
@property (retain) EWSAbsoluteYearlyRecurrencePatternType*  absoluteYearlyRecurrence;
@property (retain) EWSRelativeMonthlyRecurrencePatternType* relativeMonthlyRecurrence;
@property (retain) EWSAbsoluteMonthlyRecurrencePatternType* absoluteMonthlyRecurrence;
@property (retain) EWSWeeklyRecurrencePatternType*          weeklyRecurrence;
@property (retain) EWSDailyRecurrencePatternType*           dailyRecurrence;
@property (retain) EWSDailyRegeneratingPatternType*         dailyRegeneration;
@property (retain) EWSWeeklyRegeneratingPatternType*        weeklyRegeneration;
@property (retain) EWSMonthlyRegeneratingPatternType*       monthlyRegeneration;
@property (retain) EWSYearlyRegeneratingPatternType*        yearlyRegeneration;
@property (retain) EWSNoEndRecurrenceRangeType*             noEndRecurrence;
@property (retain) EWSEndDateRecurrenceRangeType*           endDateRecurrence;
@property (retain) EWSNumberedRecurrenceRangeType*          numberedRecurrence;


@end

