#import <Foundation/Foundation.h>
#import "MPSEWSRecurrencePatternBaseType.h"






/* AbsoluteYearlyRecurrencePatternType */
@interface MPSEWSAbsoluteYearlyRecurrencePatternType : MPSEWSRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* dayOfMonth  /* xs:int */;
@property (strong) NSString* month       /* MPSEWSMonthNamesType */;


@end

