#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: BodyTypeResponseType can be one of the following:
 *       1 Best
 *       2 HTML
 *       3 Text
 */
@interface EWSBodyTypeResponseType : EWSSimpleTypeHandler 

/** Register a handler to parse BodyTypeResponseType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Best;
+ (NSString *) HTML;
+ (NSString *) Text;
@end

