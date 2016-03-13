#import <Foundation/Foundation.h>




#import "EWSEndDateRecurrenceRangeType.h"
#import "EWSAbsoluteMonthlyRecurrencePatternType.h"
#import "EWSRelativeMonthlyRecurrencePatternType.h"
#import "EWSDailyRecurrencePatternType.h"
#import "EWSWeeklyRecurrencePatternType.h"
#import "EWSAbsoluteYearlyRecurrencePatternType.h"
#import "EWSNoEndRecurrenceRangeType.h"
#import "EWSRelativeYearlyRecurrencePatternType.h"
#import "EWSNumberedRecurrenceRangeType.h"



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

