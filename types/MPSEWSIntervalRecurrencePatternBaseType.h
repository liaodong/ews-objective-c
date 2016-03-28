#import <Foundation/Foundation.h>
#import "MPSEWSRecurrencePatternBaseType.h"






/* IntervalRecurrencePatternBaseType */
@interface MPSEWSIntervalRecurrencePatternBaseType : MPSEWSRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* interval  /* xs:int */;


@end

