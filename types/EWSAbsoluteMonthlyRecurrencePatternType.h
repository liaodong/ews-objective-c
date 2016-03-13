#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSIntervalRecurrencePatternBaseType.h"



/* AbsoluteMonthlyRecurrencePatternType */
@interface EWSAbsoluteMonthlyRecurrencePatternType : EWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* dayOfMonth  /* xs:int */;


@end

