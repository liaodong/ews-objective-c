#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: ConflictResolutionType can be one of the following:
 *       1 NeverOverwrite
 *       2 AutoResolve
 *       3 AlwaysOverwrite
 */
@interface EWSConflictResolutionType : EWSSimpleTypeHandler 

/** Register a handler to parse ConflictResolutionType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) NeverOverwrite;
+ (NSString *) AutoResolve;
+ (NSString *) AlwaysOverwrite;
@end

