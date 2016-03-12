#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: AggregateType can be one of the following:
 *       1 Minimum
 *       2 Maximum
 */
@interface EWSAggregateType : EWSSimpleTypeHandler 

/** Register a handler to parse AggregateType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Minimum;
+ (NSString *) Maximum;
@end

