#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: MonthNamesType can be one of the following:
 *       1 January
 *       2 February
 *       3 March
 *       4 April
 *       5 May
 *       6 June
 *       7 July
 *       8 August
 *       9 September
 *       10 October
 *       11 November
 *       12 December
 */
@interface MPSEWSMonthNamesType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse MonthNamesType */
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
+ (NSString *) January;
+ (NSString *) February;
+ (NSString *) March;
+ (NSString *) April;
+ (NSString *) May;
+ (NSString *) June;
+ (NSString *) July;
+ (NSString *) August;
+ (NSString *) September;
+ (NSString *) October;
+ (NSString *) November;
+ (NSString *) December;
@end

