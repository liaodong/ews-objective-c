#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: IndexBasePointType can be one of the following:
 *       1 Beginning
 *       2 End
 */
@interface MPSEWSIndexBasePointType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse IndexBasePointType */
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
+ (NSString *) Beginning;
+ (NSString *) End;
@end

