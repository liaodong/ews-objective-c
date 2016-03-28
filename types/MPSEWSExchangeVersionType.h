#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ExchangeVersionType can be one of the following:
 *       1 Exchange2007
 *       2 Exchange2007_SP1
 */
@interface MPSEWSExchangeVersionType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ExchangeVersionType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Exchange2007;
+ (NSString *) Exchange2007_SP1;
@end

