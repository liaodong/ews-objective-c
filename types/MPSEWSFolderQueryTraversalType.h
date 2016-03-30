#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: FolderQueryTraversalType can be one of the following:
 *       1 Shallow
 *       2 Deep
 *       3 SoftDeleted
 */
@interface MPSEWSFolderQueryTraversalType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse FolderQueryTraversalType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Shallow;
+ (NSString *) Deep;
+ (NSString *) SoftDeleted;
@end

