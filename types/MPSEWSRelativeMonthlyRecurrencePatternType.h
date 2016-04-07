#import <Foundation/Foundation.h>
#import "MPSEWSIntervalRecurrencePatternBaseType.h"






/* RelativeMonthlyRecurrencePatternType */
@interface MPSEWSRelativeMonthlyRecurrencePatternType : MPSEWSIntervalRecurrencePatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRelativeMonthlyRecurrencePatternType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* daysOfWeek      /* MPSEWSDayOfWeekType */;
@property (strong) NSString* dayOfWeekIndex  /* MPSEWSDayOfWeekIndexType */;


@end

