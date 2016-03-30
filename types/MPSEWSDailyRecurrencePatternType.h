#import <Foundation/Foundation.h>
#import "MPSEWSIntervalRecurrencePatternBaseType.h"






/* DailyRecurrencePatternType */
@interface MPSEWSDailyRecurrencePatternType : MPSEWSIntervalRecurrencePatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDailyRecurrencePatternType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

