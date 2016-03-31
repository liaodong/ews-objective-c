#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: MemberStatusType can be one of the following:
 *       1 Unrecognized
 *       2 Normal
 *       3 Demoted
 */
@interface MPSEWSMemberStatusType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse MemberStatusType */
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
+ (NSString *) Unrecognized;
+ (NSString *) Normal;
+ (NSString *) Demoted;
@end

