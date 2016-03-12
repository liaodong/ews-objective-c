#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: MaxSyncChangesReturnedType is a int between [1, 512] */
@interface EWSMaxSyncChangesReturnedType : EWSSimpleTypeHandler 

/** Register a handler to parse MaxSyncChangesReturnedType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSNumber *) updateObject:(NSNumber *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSNumber *) object;

@end

