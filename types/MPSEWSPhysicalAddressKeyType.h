#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: PhysicalAddressKeyType can be one of the following:
 *       1 Business
 *       2 Home
 *       3 Other
 */
@interface MPSEWSPhysicalAddressKeyType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse PhysicalAddressKeyType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Business;
+ (NSString *) Home;
+ (NSString *) Other;
@end

