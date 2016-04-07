#import <Foundation/Foundation.h>
#import "MPSEWSRecurrencePatternBaseType.h"






/* RelativeYearlyRecurrencePatternType */
@interface MPSEWSRelativeYearlyRecurrencePatternType : MPSEWSRecurrencePatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRelativeYearlyRecurrencePatternType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* daysOfWeek      /* MPSEWSDayOfWeekType */;
@property (strong) NSString* dayOfWeekIndex  /* MPSEWSDayOfWeekIndexType */;
@property (strong) NSString* month           /* MPSEWSMonthNamesType */;


@end

