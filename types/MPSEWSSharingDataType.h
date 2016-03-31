#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: SharingDataType can be one of the following:
 *       1 Calendar
 *       2 Contacts
 */
@interface MPSEWSSharingDataType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse SharingDataType */
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
+ (NSString *) Calendar;
+ (NSString *) Contacts;
@end

