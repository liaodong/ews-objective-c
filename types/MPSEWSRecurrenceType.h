#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSAbsoluteMonthlyRecurrencePatternType;
@class MPSEWSAbsoluteYearlyRecurrencePatternType;
@class MPSEWSDailyRecurrencePatternType;
@class MPSEWSEndDateRecurrenceRangeType;
@class MPSEWSNoEndRecurrenceRangeType;
@class MPSEWSNumberedRecurrenceRangeType;
@class MPSEWSRelativeMonthlyRecurrencePatternType;
@class MPSEWSRelativeYearlyRecurrencePatternType;
@class MPSEWSWeeklyRecurrencePatternType;



/* RecurrenceType */
@interface MPSEWSRecurrenceType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRecurrenceType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSRelativeYearlyRecurrencePatternType*  relativeYearlyRecurrence;
@property (strong) MPSEWSAbsoluteYearlyRecurrencePatternType*  absoluteYearlyRecurrence;
@property (strong) MPSEWSRelativeMonthlyRecurrencePatternType* relativeMonthlyRecurrence;
@property (strong) MPSEWSAbsoluteMonthlyRecurrencePatternType* absoluteMonthlyRecurrence;
@property (strong) MPSEWSWeeklyRecurrencePatternType*          weeklyRecurrence;
@property (strong) MPSEWSDailyRecurrencePatternType*           dailyRecurrence;
@property (strong) MPSEWSNoEndRecurrenceRangeType*             noEndRecurrence;
@property (strong) MPSEWSEndDateRecurrenceRangeType*           endDateRecurrence;
@property (strong) MPSEWSNumberedRecurrenceRangeType*          numberedRecurrence;


@end

