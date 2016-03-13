#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSMonthNamesType.h"
#import "EWSRecurrencePatternBaseType.h"



/* AbsoluteYearlyRecurrencePatternType */
@interface EWSAbsoluteYearlyRecurrencePatternType : EWSRecurrencePatternBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* dayOfMonth  /* xs:int */;
@property (retain) NSString* month       /* EWSMonthNamesType */;


@end

