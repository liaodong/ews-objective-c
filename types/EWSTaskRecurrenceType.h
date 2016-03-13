#import <Foundation/Foundation.h>




#import "EWSNoEndRecurrenceRangeType.h"
#import "EWSWeeklyRegeneratingPatternType.h"
#import "EWSYearlyRegeneratingPatternType.h"
#import "EWSAbsoluteYearlyRecurrencePatternType.h"
#import "EWSMonthlyRegeneratingPatternType.h"
#import "EWSNumberedRecurrenceRangeType.h"
#import "EWSWeeklyRecurrencePatternType.h"
#import "EWSEndDateRecurrenceRangeType.h"
#import "EWSRelativeYearlyRecurrencePatternType.h"
#import "EWSAbsoluteMonthlyRecurrencePatternType.h"
#import "EWSRelativeMonthlyRecurrencePatternType.h"
#import "EWSDailyRecurrencePatternType.h"
#import "EWSDailyRegeneratingPatternType.h"



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

