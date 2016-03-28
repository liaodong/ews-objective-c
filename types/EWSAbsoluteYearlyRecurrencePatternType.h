#import <Foundation/Foundation.h>
#import "EWSRecurrencePatternBaseType.h"






/* AbsoluteYearlyRecurrencePatternType */
@interface EWSAbsoluteYearlyRecurrencePatternType : EWSRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* dayOfMonth  /* xs:int */;
@property (strong) NSString* month       /* EWSMonthNamesType */;


@end

