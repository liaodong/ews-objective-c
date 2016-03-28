#import <Foundation/Foundation.h>



@class EWSAbsoluteMonthlyRecurrencePatternType;
@class EWSAbsoluteYearlyRecurrencePatternType;
@class EWSDailyRecurrencePatternType;
@class EWSDailyRegeneratingPatternType;
@class EWSEndDateRecurrenceRangeType;
@class EWSMonthlyRegeneratingPatternType;
@class EWSNoEndRecurrenceRangeType;
@class EWSNumberedRecurrenceRangeType;
@class EWSRelativeMonthlyRecurrencePatternType;
@class EWSRelativeYearlyRecurrencePatternType;
@class EWSWeeklyRecurrencePatternType;
@class EWSWeeklyRegeneratingPatternType;
@class EWSYearlyRegeneratingPatternType;



/* TaskRecurrenceType */
@interface EWSTaskRecurrenceType : NSObject

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
@property (strong) EWSDailyRegeneratingPatternType*         dailyRegeneration;
@property (strong) EWSWeeklyRegeneratingPatternType*        weeklyRegeneration;
@property (strong) EWSMonthlyRegeneratingPatternType*       monthlyRegeneration;
@property (strong) EWSYearlyRegeneratingPatternType*        yearlyRegeneration;
@property (strong) EWSNoEndRecurrenceRangeType*             noEndRecurrence;
@property (strong) EWSEndDateRecurrenceRangeType*           endDateRecurrence;
@property (strong) EWSNumberedRecurrenceRangeType*          numberedRecurrence;


@end

