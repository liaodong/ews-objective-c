#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: EmailAddressKeyType can be one of the following:
 *       1 EmailAddress1
 *       2 EmailAddress2
 *       3 EmailAddress3
 */
@interface EWSEmailAddressKeyType : EWSSimpleTypeHandler 

/** Register a handler to parse EmailAddressKeyType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) EmailAddress1;
+ (NSString *) EmailAddress2;
+ (NSString *) EmailAddress3;
@end

