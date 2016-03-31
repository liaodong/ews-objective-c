#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ConversationActionTypeType can be one of the following:
 *       1 AlwaysCategorize
 *       2 AlwaysDelete
 *       3 AlwaysMove
 *       4 Delete
 *       5 Move
 *       6 Copy
 *       7 SetReadState
 */
@interface MPSEWSConversationActionTypeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ConversationActionTypeType */
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
+ (NSString *) AlwaysCategorize;
+ (NSString *) AlwaysDelete;
+ (NSString *) AlwaysMove;
+ (NSString *) Delete;
+ (NSString *) Move;
+ (NSString *) Copy;
+ (NSString *) SetReadState;
@end

