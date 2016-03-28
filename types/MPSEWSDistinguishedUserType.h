#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: DistinguishedUserType can be one of the following:
 *       1 Default
 *       2 Anonymous
 */
@interface MPSEWSDistinguishedUserType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse DistinguishedUserType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Default;
+ (NSString *) Anonymous;
@end

