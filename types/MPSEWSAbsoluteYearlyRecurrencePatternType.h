#import <Foundation/Foundation.h>
#import "MPSEWSRecurrencePatternBaseType.h"






/* AbsoluteYearlyRecurrencePatternType */
@interface MPSEWSAbsoluteYearlyRecurrencePatternType : MPSEWSRecurrencePatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAbsoluteYearlyRecurrencePatternType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* dayOfMonth  /* xs:int */;
@property (strong) NSString* month       /* MPSEWSMonthNamesType */;


@end

