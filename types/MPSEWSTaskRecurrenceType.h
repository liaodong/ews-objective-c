#import <Foundation/Foundation.h>



@class MPSEWSAbsoluteMonthlyRecurrencePatternType;
@class MPSEWSAbsoluteYearlyRecurrencePatternType;
@class MPSEWSDailyRecurrencePatternType;
@class MPSEWSDailyRegeneratingPatternType;
@class MPSEWSEndDateRecurrenceRangeType;
@class MPSEWSMonthlyRegeneratingPatternType;
@class MPSEWSNoEndRecurrenceRangeType;
@class MPSEWSNumberedRecurrenceRangeType;
@class MPSEWSRelativeMonthlyRecurrencePatternType;
@class MPSEWSRelativeYearlyRecurrencePatternType;
@class MPSEWSWeeklyRecurrencePatternType;
@class MPSEWSWeeklyRegeneratingPatternType;
@class MPSEWSYearlyRegeneratingPatternType;



/* TaskRecurrenceType */
@interface MPSEWSTaskRecurrenceType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSRelativeYearlyRecurrencePatternType*  relativeYearlyRecurrence;
@property (strong) MPSEWSAbsoluteYearlyRecurrencePatternType*  absoluteYearlyRecurrence;
@property (strong) MPSEWSRelativeMonthlyRecurrencePatternType* relativeMonthlyRecurrence;
@property (strong) MPSEWSAbsoluteMonthlyRecurrencePatternType* absoluteMonthlyRecurrence;
@property (strong) MPSEWSWeeklyRecurrencePatternType*          weeklyRecurrence;
@property (strong) MPSEWSDailyRecurrencePatternType*           dailyRecurrence;
@property (strong) MPSEWSDailyRegeneratingPatternType*         dailyRegeneration;
@property (strong) MPSEWSWeeklyRegeneratingPatternType*        weeklyRegeneration;
@property (strong) MPSEWSMonthlyRegeneratingPatternType*       monthlyRegeneration;
@property (strong) MPSEWSYearlyRegeneratingPatternType*        yearlyRegeneration;
@property (strong) MPSEWSNoEndRecurrenceRangeType*             noEndRecurrence;
@property (strong) MPSEWSEndDateRecurrenceRangeType*           endDateRecurrence;
@property (strong) MPSEWSNumberedRecurrenceRangeType*          numberedRecurrence;


@end

