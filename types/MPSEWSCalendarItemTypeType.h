#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: CalendarItemTypeType can be one of the following:
 *       1 Single
 *       2 Occurrence
 *       3 Exception
 *       4 RecurringMaster
 */
@interface MPSEWSCalendarItemTypeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse CalendarItemTypeType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Single;
+ (NSString *) Occurrence;
+ (NSString *) Exception;
+ (NSString *) RecurringMaster;
@end

