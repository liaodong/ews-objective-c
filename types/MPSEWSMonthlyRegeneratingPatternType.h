#import <Foundation/Foundation.h>
#import "MPSEWSRegeneratingPatternBaseType.h"






/* MonthlyRegeneratingPatternType */
@interface MPSEWSMonthlyRegeneratingPatternType : MPSEWSRegeneratingPatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMonthlyRegeneratingPatternType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

