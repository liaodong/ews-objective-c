#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ItemQueryTraversalType can be one of the following:
 *       1 Shallow
 *       2 SoftDeleted
 *       3 Associated
 */
@interface MPSEWSItemQueryTraversalType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ItemQueryTraversalType */
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
+ (NSString *) Shallow;
+ (NSString *) SoftDeleted;
+ (NSString *) Associated;
@end

