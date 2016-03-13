#import <Foundation/Foundation.h>




#import "EWSMonthNamesType.h"
#import "EWSDayOfWeekType.h"
#import "EWSDayOfWeekIndexType.h"
#import "EWSRecurrencePatternBaseType.h"



/* RelativeYearlyRecurrencePatternType */
@interface EWSRelativeYearlyRecurrencePatternType : EWSRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* daysOfWeek      /* EWSDayOfWeekType */;
@property (retain) NSString* dayOfWeekIndex  /* EWSDayOfWeekIndexType */;
@property (retain) NSString* month           /* EWSMonthNamesType */;


@end

