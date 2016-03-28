#import <Foundation/Foundation.h>
#import "MPSEWSIntervalRecurrencePatternBaseType.h"






/* RegeneratingPatternBaseType */
@interface MPSEWSRegeneratingPatternBaseType : MPSEWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

