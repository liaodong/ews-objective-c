#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: PermissionReadAccessType can be one of the following:
 *       1 None
 *       2 FullDetails
 */
@interface EWSPermissionReadAccessType : EWSSimpleTypeHandler 

/** Register a handler to parse PermissionReadAccessType */
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
+ (NSString *) FullDetails;
@end

