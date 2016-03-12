#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: ContainmentComparisonType can be one of the following:
 *       1 Exact
 *       2 IgnoreCase
 *       3 IgnoreNonSpacingCharacters
 *       4 Loose
 *       5 IgnoreCaseAndNonSpacingCharacters
 *       6 LooseAndIgnoreCase
 *       7 LooseAndIgnoreNonSpace
 *       8 LooseAndIgnoreCaseAndIgnoreNonSpace
 */
@interface EWSContainmentComparisonType : EWSSimpleTypeHandler 

/** Register a handler to parse ContainmentComparisonType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Exact;
+ (NSString *) IgnoreCase;
+ (NSString *) IgnoreNonSpacingCharacters;
+ (NSString *) Loose;
+ (NSString *) IgnoreCaseAndNonSpacingCharacters;
+ (NSString *) LooseAndIgnoreCase;
+ (NSString *) LooseAndIgnoreNonSpace;
+ (NSString *) LooseAndIgnoreCaseAndIgnoreNonSpace;
@end

