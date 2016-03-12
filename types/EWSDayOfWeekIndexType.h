#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: DayOfWeekIndexType can be one of the following:
 *       1 First
 *       2 Second
 *       3 Third
 *       4 Fourth
 *       5 Last
 */
@interface EWSDayOfWeekIndexType : EWSSimpleTypeHandler 

/** Register a handler to parse DayOfWeekIndexType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) First;
+ (NSString *) Second;
+ (NSString *) Third;
+ (NSString *) Fourth;
+ (NSString *) Last;
@end

