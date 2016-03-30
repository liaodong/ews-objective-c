#import <Foundation/Foundation.h>
#import "MPSEWSRegeneratingPatternBaseType.h"






/* WeeklyRegeneratingPatternType */
@interface MPSEWSWeeklyRegeneratingPatternType : MPSEWSRegeneratingPatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSWeeklyRegeneratingPatternType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

