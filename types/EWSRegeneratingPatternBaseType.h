#import <Foundation/Foundation.h>
#import "EWSIntervalRecurrencePatternBaseType.h"






/* RegeneratingPatternBaseType */
@interface EWSRegeneratingPatternBaseType : EWSIntervalRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

