#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ExchangeVersionType can be one of the following:
 *       1 Exchange2007
 *       2 Exchange2007_SP1
 *       3 Exchange2010
 *       4 Exchange2010_SP1
 *       5 Exchange2010_SP2
 */
@interface MPSEWSExchangeVersionType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ExchangeVersionType */
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
+ (NSString *) Exchange2007;
+ (NSString *) Exchange2007_SP1;
+ (NSString *) Exchange2010;
+ (NSString *) Exchange2010_SP1;
+ (NSString *) Exchange2010_SP2;
@end

