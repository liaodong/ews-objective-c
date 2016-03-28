#import <Foundation/Foundation.h>
#import "EWSRecurrencePatternBaseType.h"






/* RelativeYearlyRecurrencePatternType */
@interface EWSRelativeYearlyRecurrencePatternType : EWSRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* daysOfWeek      /* EWSDayOfWeekType */;
@property (strong) NSString* dayOfWeekIndex  /* EWSDayOfWeekIndexType */;
@property (strong) NSString* month           /* EWSMonthNamesType */;


@end

