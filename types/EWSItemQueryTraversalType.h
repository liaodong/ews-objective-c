#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: ItemQueryTraversalType can be one of the following:
 *       1 Shallow
 *       2 SoftDeleted
 */
@interface EWSItemQueryTraversalType : EWSSimpleTypeHandler 

/** Register a handler to parse ItemQueryTraversalType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Shallow;
+ (NSString *) SoftDeleted;
@end

