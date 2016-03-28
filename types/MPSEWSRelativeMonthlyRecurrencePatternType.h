#import <Foundation/Foundation.h>
#import "MPSEWSIntervalRecurrencePatternBaseType.h"






/* RelativeMonthlyRecurrencePatternType */
@interface MPSEWSRelativeMonthlyRecurrencePatternType : MPSEWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* daysOfWeek      /* MPSEWSDayOfWeekType */;
@property (strong) NSString* dayOfWeekIndex  /* MPSEWSDayOfWeekIndexType */;


@end

