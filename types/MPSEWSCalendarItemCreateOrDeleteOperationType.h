#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: CalendarItemCreateOrDeleteOperationType can be one of the following:
 *       1 SendToNone
 *       2 SendOnlyToAll
 *       3 SendToAllAndSaveCopy
 */
@interface MPSEWSCalendarItemCreateOrDeleteOperationType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse CalendarItemCreateOrDeleteOperationType */
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
+ (NSString *) SendToNone;
+ (NSString *) SendOnlyToAll;
+ (NSString *) SendToAllAndSaveCopy;
@end

