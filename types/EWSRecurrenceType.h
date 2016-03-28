#import <Foundation/Foundation.h>



@class EWSAbsoluteMonthlyRecurrencePatternType;
@class EWSAbsoluteYearlyRecurrencePatternType;
@class EWSDailyRecurrencePatternType;
@class EWSEndDateRecurrenceRangeType;
@class EWSNoEndRecurrenceRangeType;
@class EWSNumberedRecurrenceRangeType;
@class EWSRelativeMonthlyRecurrencePatternType;
@class EWSRelativeYearlyRecurrencePatternType;
@class EWSWeeklyRecurrencePatternType;



/* RecurrenceType */
@interface EWSRecurrenceType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSRelativeYearlyRecurrencePatternType*  relativeYearlyRecurrence;
@property (strong) EWSAbsoluteYearlyRecurrencePatternType*  absoluteYearlyRecurrence;
@property (strong) EWSRelativeMonthlyRecurrencePatternType* relativeMonthlyRecurrence;
@property (strong) EWSAbsoluteMonthlyRecurrencePatternType* absoluteMonthlyRecurrence;
@property (strong) EWSWeeklyRecurrencePatternType*          weeklyRecurrence;
@property (strong) EWSDailyRecurrencePatternType*           dailyRecurrence;
@property (strong) EWSNoEndRecurrenceRangeType*             noEndRecurrence;
@property (strong) EWSEndDateRecurrenceRangeType*           endDateRecurrence;
@property (strong) EWSNumberedRecurrenceRangeType*          numberedRecurrence;


@end

