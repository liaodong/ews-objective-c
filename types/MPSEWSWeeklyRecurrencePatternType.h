#import <Foundation/Foundation.h>
#import "MPSEWSIntervalRecurrencePatternBaseType.h"






/* WeeklyRecurrencePatternType */
@interface MPSEWSWeeklyRecurrencePatternType : MPSEWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* daysOfWeek  /* MPSEWSDaysOfWeekType */;


@end

