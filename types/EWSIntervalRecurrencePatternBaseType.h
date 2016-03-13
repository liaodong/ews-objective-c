#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSRecurrencePatternBaseType.h"



/* IntervalRecurrencePatternBaseType */
@interface EWSIntervalRecurrencePatternBaseType : EWSRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* interval  /* xs:int */;


@end

