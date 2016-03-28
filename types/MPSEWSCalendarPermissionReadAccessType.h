#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: CalendarPermissionReadAccessType can be one of the following:
 *       1 None
 *       2 TimeOnly
 *       3 TimeAndSubjectAndLocation
 *       4 FullDetails
 */
@interface MPSEWSCalendarPermissionReadAccessType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse CalendarPermissionReadAccessType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) None;
+ (NSString *) TimeOnly;
+ (NSString *) TimeAndSubjectAndLocation;
+ (NSString *) FullDetails;
@end

