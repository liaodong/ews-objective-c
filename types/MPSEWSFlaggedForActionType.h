#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: FlaggedForActionType can be one of the following:
 *       1 Any
 *       2 Call
 *       3 DoNotForward
 *       4 FollowUp
 *       5 FYI
 *       6 Forward
 *       7 NoResponseNecessary
 *       8 Read
 *       9 Reply
 *       10 ReplyToAll
 *       11 Review
 */
@interface MPSEWSFlaggedForActionType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse FlaggedForActionType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val forVersion:(MPSEWSExchangeVersion) ver;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Any;
+ (NSString *) Call;
+ (NSString *) DoNotForward;
+ (NSString *) FollowUp;
+ (NSString *) FYI;
+ (NSString *) Forward;
+ (NSString *) NoResponseNecessary;
+ (NSString *) Read;
+ (NSString *) Reply;
+ (NSString *) ReplyToAll;
+ (NSString *) Review;
@end

