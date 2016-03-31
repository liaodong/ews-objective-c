#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: FlagStatusType can be one of the following:
 *       1 NotFlagged
 *       2 Flagged
 *       3 Complete
 */
@interface MPSEWSFlagStatusType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse FlagStatusType */
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
+ (NSString *) NotFlagged;
+ (NSString *) Flagged;
+ (NSString *) Complete;
@end

