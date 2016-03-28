#import <Foundation/Foundation.h>
#import "EWSIntervalRecurrencePatternBaseType.h"






/* WeeklyRecurrencePatternType */
@interface EWSWeeklyRecurrencePatternType : EWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* daysOfWeek  /* EWSDaysOfWeekType */;


@end

