#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: ExternalAudience can be one of the following:
 *       1 None
 *       2 Known
 *       3 All
 */
@interface EWSExternalAudience : EWSSimpleTypeHandler 

/** Register a handler to parse ExternalAudience */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) None;
+ (NSString *) Known;
+ (NSString *) All;
@end

