#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: PhysicalAddressIndexType can be one of the following:
 *       1 None
 *       2 Business
 *       3 Home
 *       4 Other
 */
@interface EWSPhysicalAddressIndexType : EWSSimpleTypeHandler 

/** Register a handler to parse PhysicalAddressIndexType */
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
+ (NSString *) Business;
+ (NSString *) Home;
+ (NSString *) Other;
@end

