#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: CompleteActionType can be one of the following:
 *       1 Commit
 *       2 Abandon
 */
@interface MPSEWSCompleteActionType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse CompleteActionType */
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
+ (NSString *) Commit;
+ (NSString *) Abandon;
@end

