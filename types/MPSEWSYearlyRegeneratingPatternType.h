#import <Foundation/Foundation.h>
#import "MPSEWSRegeneratingPatternBaseType.h"






/* YearlyRegeneratingPatternType */
@interface MPSEWSYearlyRegeneratingPatternType : MPSEWSRegeneratingPatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSYearlyRegeneratingPatternType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

