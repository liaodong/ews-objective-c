#import <Foundation/Foundation.h>
#import "MPSEWSRecurrenceRangeBaseType.h"






/* NoEndRecurrenceRangeType */
@interface MPSEWSNoEndRecurrenceRangeType : MPSEWSRecurrenceRangeBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNoEndRecurrenceRangeType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

