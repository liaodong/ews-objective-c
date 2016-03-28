#import <Foundation/Foundation.h>
#import "EWSIntervalRecurrencePatternBaseType.h"






/* RelativeMonthlyRecurrencePatternType */
@interface EWSRelativeMonthlyRecurrencePatternType : EWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* daysOfWeek      /* EWSDayOfWeekType */;
@property (strong) NSString* dayOfWeekIndex  /* EWSDayOfWeekIndexType */;


@end

