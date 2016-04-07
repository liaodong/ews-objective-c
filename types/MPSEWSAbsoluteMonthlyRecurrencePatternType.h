#import <Foundation/Foundation.h>
#import "MPSEWSIntervalRecurrencePatternBaseType.h"






/* AbsoluteMonthlyRecurrencePatternType */
@interface MPSEWSAbsoluteMonthlyRecurrencePatternType : MPSEWSIntervalRecurrencePatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAbsoluteMonthlyRecurrencePatternType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* dayOfMonth  /* xs:int */;


@end

