#import <Foundation/Foundation.h>




#import "../types/EWSDayOfWeekIndexType.h"
#import "../types/EWSDayOfWeekType.h"
#import "EWSIntervalRecurrencePatternBaseType.h"



/* RelativeMonthlyRecurrencePatternType */
@interface EWSRelativeMonthlyRecurrencePatternType : EWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* daysOfWeek      /* EWSDayOfWeekType */;
@property (retain) NSString* dayOfWeekIndex  /* EWSDayOfWeekIndexType */;


@end

