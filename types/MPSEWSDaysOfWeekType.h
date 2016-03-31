#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSEnumeratedListTypeHandler.h"


/** DaysOfWeekType is a list ofcan be one of the following:
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
@interface MPSEWSDaysOfWeekType : MPSEWSEnumeratedListTypeHandler 

/** Register a handler to parse DaysOfWeekType */
+ (void) initialize;
+ (BOOL) isValid:(NSArray<NSString*>*) val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

@end

