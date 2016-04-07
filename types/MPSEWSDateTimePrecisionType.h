#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: DateTimePrecisionType can be one of the following:
 *       1 Seconds
 *       2 Milliseconds
 */
@interface MPSEWSDateTimePrecisionType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse DateTimePrecisionType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val forVersion:(MPSEWSExchangeVersion) ver;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Seconds;
+ (NSString *) Milliseconds;
@end

