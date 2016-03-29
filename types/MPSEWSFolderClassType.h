#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: FolderClassType is string  */
@interface MPSEWSFolderClassType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse FolderClassType */
+ (void) initialize;
+ (BOOL) isValid: (NSString *) val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;

@end

