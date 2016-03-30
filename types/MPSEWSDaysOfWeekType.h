#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


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
@interface MPSEWSDaysOfWeekType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse DaysOfWeekType */
+ (void) initialize;
+ (BOOL) isValid:(NSArray<NSString*>*) val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** construct an empty list */
- (NSMutableArray<NSString*> *) construct;

/** Process the characters */
- (NSMutableArray<NSString *> *) updateObject:(NSMutableArray<NSString *> *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer forObject:(NSMutableArray<NSString *> *) object;

@end

