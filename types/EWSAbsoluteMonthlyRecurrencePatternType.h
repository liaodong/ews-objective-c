#import <Foundation/Foundation.h>
#import "EWSIntervalRecurrencePatternBaseType.h"






/* AbsoluteMonthlyRecurrencePatternType */
@interface EWSAbsoluteMonthlyRecurrencePatternType : EWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* dayOfMonth  /* xs:int */;


@end

