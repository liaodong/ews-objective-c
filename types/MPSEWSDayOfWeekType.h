#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: DayOfWeekType can be one of the following:
 *       1 Sunday
 *       2 Monday
 *       3 Tuesday
 *       4 Wednesday
 *       5 Thursday
 *       6 Friday
 *       7 Saturday
 *       8 Day
 *       9 Weekday
 *       10 WeekendDay
 */
@interface MPSEWSDayOfWeekType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse DayOfWeekType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val forVersion:(MPSEWSExchangeVersion) ver;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Sunday;
+ (NSString *) Monday;
+ (NSString *) Tuesday;
+ (NSString *) Wednesday;
+ (NSString *) Thursday;
+ (NSString *) Friday;
+ (NSString *) Saturday;
+ (NSString *) Day;
+ (NSString *) Weekday;
+ (NSString *) WeekendDay;
@end

