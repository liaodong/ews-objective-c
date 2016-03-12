#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: CalendarItemCreateOrDeleteOperationType can be one of the following:
 *       1 SendToNone
 *       2 SendOnlyToAll
 *       3 SendToAllAndSaveCopy
 */
@interface EWSCalendarItemCreateOrDeleteOperationType : EWSSimpleTypeHandler 

/** Register a handler to parse CalendarItemCreateOrDeleteOperationType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) SendToNone;
+ (NSString *) SendOnlyToAll;
+ (NSString *) SendToAllAndSaveCopy;
@end

