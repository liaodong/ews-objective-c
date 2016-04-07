#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: PhysicalAddressIndexType can be one of the following:
 *       1 None
 *       2 Business
 *       3 Home
 *       4 Other
 */
@interface MPSEWSPhysicalAddressIndexType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse PhysicalAddressIndexType */
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
+ (NSString *) None;
+ (NSString *) Business;
+ (NSString *) Home;
+ (NSString *) Other;
@end

