#import <Foundation/Foundation.h>




#import "../types/EWSAbsoluteMonthlyRecurrencePatternType.h"
#import "../types/EWSAbsoluteYearlyRecurrencePatternType.h"
#import "../types/EWSDailyRecurrencePatternType.h"
#import "../types/EWSEndDateRecurrenceRangeType.h"
#import "../types/EWSNoEndRecurrenceRangeType.h"
#import "../types/EWSNumberedRecurrenceRangeType.h"
#import "../types/EWSRelativeMonthlyRecurrencePatternType.h"
#import "../types/EWSRelativeYearlyRecurrencePatternType.h"
#import "../types/EWSWeeklyRecurrencePatternType.h"



/* RecurrenceType */
@interface EWSRecurrenceType : NSObject

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
@property (retain) EWSNoEndRecurrenceRangeType*             noEndRecurrence;
@property (retain) EWSEndDateRecurrenceRangeType*           endDateRecurrence;
@property (retain) EWSNumberedRecurrenceRangeType*          numberedRecurrence;


@end

