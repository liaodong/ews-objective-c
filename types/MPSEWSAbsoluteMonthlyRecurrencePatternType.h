#import <Foundation/Foundation.h>
#import "MPSEWSIntervalRecurrencePatternBaseType.h"






/* AbsoluteMonthlyRecurrencePatternType */
@interface MPSEWSAbsoluteMonthlyRecurrencePatternType : MPSEWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* dayOfMonth  /* xs:int */;


@end

