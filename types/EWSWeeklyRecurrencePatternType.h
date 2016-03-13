#import <Foundation/Foundation.h>




#import "EWSDaysOfWeekType.h"
#import "EWSIntervalRecurrencePatternBaseType.h"



/* WeeklyRecurrencePatternType */
@interface EWSWeeklyRecurrencePatternType : EWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSMutableArray<NSString*>* daysOfWeek  /* EWSDaysOfWeekType */;


@end

