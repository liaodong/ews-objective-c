#import <Foundation/Foundation.h>
#import "MPSEWSIntervalRecurrencePatternBaseType.h"






/* RegeneratingPatternBaseType */
@interface MPSEWSRegeneratingPatternBaseType : MPSEWSIntervalRecurrencePatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRegeneratingPatternBaseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

