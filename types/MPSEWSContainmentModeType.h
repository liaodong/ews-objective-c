#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ContainmentModeType can be one of the following:
 *       1 FullString
 *       2 Prefixed
 *       3 Substring
 *       4 PrefixOnWords
 *       5 ExactPhrase
 */
@interface MPSEWSContainmentModeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ContainmentModeType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) FullString;
+ (NSString *) Prefixed;
+ (NSString *) Substring;
+ (NSString *) PrefixOnWords;
+ (NSString *) ExactPhrase;
@end

