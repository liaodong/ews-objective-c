#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: SuggestionQuality can be one of the following:
 *       1 Excellent
 *       2 Good
 *       3 Fair
 *       4 Poor
 */
@interface EWSSuggestionQuality : EWSSimpleTypeHandler 

/** Register a handler to parse SuggestionQuality */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Excellent;
+ (NSString *) Good;
+ (NSString *) Fair;
+ (NSString *) Poor;
@end
