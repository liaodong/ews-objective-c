#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: SensitivityChoicesType can be one of the following:
 *       1 Normal
 *       2 Personal
 *       3 Private
 *       4 Confidential
 */
@interface MPSEWSSensitivityChoicesType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse SensitivityChoicesType */
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
+ (NSString *) Normal;
+ (NSString *) Personal;
+ (NSString *) Private;
+ (NSString *) Confidential;
@end

