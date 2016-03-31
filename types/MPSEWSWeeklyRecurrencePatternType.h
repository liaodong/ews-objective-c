#import <Foundation/Foundation.h>
#import "MPSEWSIntervalRecurrencePatternBaseType.h"






/* WeeklyRecurrencePatternType */
@interface MPSEWSWeeklyRecurrencePatternType : MPSEWSIntervalRecurrencePatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSWeeklyRecurrencePatternType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* daysOfWeek      /* MPSEWSDaysOfWeekType */;
@property (strong) NSString*                  firstDayOfWeek  /* MPSEWSDayOfWeekType */;


@end

