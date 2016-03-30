#import <Foundation/Foundation.h>
#import "MPSEWSRecurrenceRangeBaseType.h"






/* NumberedRecurrenceRangeType */
@interface MPSEWSNumberedRecurrenceRangeType : MPSEWSRecurrenceRangeBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNumberedRecurrenceRangeType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* numberOfOccurrences  /* xs:int */;


@end

