#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ConnectionFailureCauseType can be one of the following:
 *       1 None
 *       2 UserBusy
 *       3 NoAnswer
 *       4 Unavailable
 *       5 Other
 */
@interface MPSEWSConnectionFailureCauseType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ConnectionFailureCauseType */
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
+ (NSString *) None;
+ (NSString *) UserBusy;
+ (NSString *) NoAnswer;
+ (NSString *) Unavailable;
+ (NSString *) Other;
@end

