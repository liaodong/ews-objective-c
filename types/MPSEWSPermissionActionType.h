#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: PermissionActionType can be one of the following:
 *       1 None
 *       2 Owned
 *       3 All
 */
@interface MPSEWSPermissionActionType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse PermissionActionType */
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
+ (NSString *) Owned;
+ (NSString *) All;
@end

