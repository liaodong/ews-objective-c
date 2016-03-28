#import <Foundation/Foundation.h>
#import "EWSRecurrencePatternBaseType.h"






/* IntervalRecurrencePatternBaseType */
@interface EWSIntervalRecurrencePatternBaseType : EWSRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* interval  /* xs:int */;


@end

