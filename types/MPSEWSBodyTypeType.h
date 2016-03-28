#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: BodyTypeType can be one of the following:
 *       1 HTML
 *       2 Text
 */
@interface MPSEWSBodyTypeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse BodyTypeType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) HTML;
+ (NSString *) Text;
@end

