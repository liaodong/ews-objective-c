#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ExceptionPropertyURIType can be one of the following:
 *       1 attachment:Name
 *       2 attachment:ContentType
 *       3 attachment:Content
 *       4 recurrence:Month
 *       5 recurrence:DayOfWeekIndex
 *       6 recurrence:DaysOfWeek
 *       7 recurrence:DayOfMonth
 *       8 recurrence:Interval
 *       9 recurrence:NumberOfOccurrences
 *       10 timezone:Offset
 */
@interface MPSEWSExceptionPropertyURIType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ExceptionPropertyURIType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) attachment_Name;
+ (NSString *) attachment_ContentType;
+ (NSString *) attachment_Content;
+ (NSString *) recurrence_Month;
+ (NSString *) recurrence_DayOfWeekIndex;
+ (NSString *) recurrence_DaysOfWeek;
+ (NSString *) recurrence_DayOfMonth;
+ (NSString *) recurrence_Interval;
+ (NSString *) recurrence_NumberOfOccurrences;
+ (NSString *) timezone_Offset;
@end

