#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: CalendarItemUpdateOperationType can be one of the following:
 *       1 SendToNone
 *       2 SendOnlyToAll
 *       3 SendOnlyToChanged
 *       4 SendToAllAndSaveCopy
 *       5 SendToChangedAndSaveCopy
 */
@interface MPSEWSCalendarItemUpdateOperationType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse CalendarItemUpdateOperationType */
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
+ (NSString *) SendOnlyToChanged;
+ (NSString *) SendToAllAndSaveCopy;
+ (NSString *) SendToChangedAndSaveCopy;
@end

