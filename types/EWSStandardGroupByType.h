#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: StandardGroupByType can be one of the following:
 *       1 ConversationTopic
 */
@interface EWSStandardGroupByType : EWSSimpleTypeHandler 

/** Register a handler to parse StandardGroupByType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) ConversationTopic;
@end

