#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ResponseClassType can be one of the following:
 *       1 Success
 *       2 Warning
 *       3 Error
 */
@interface MPSEWSResponseClassType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ResponseClassType */
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
+ (NSString *) Success;
+ (NSString *) Warning;
+ (NSString *) Error;
@end

