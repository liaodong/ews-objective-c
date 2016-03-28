#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ImAddressKeyType can be one of the following:
 *       1 ImAddress1
 *       2 ImAddress2
 *       3 ImAddress3
 */
@interface MPSEWSImAddressKeyType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ImAddressKeyType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) ImAddress1;
+ (NSString *) ImAddress2;
+ (NSString *) ImAddress3;
@end

