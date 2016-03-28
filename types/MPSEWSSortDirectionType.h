#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: SortDirectionType can be one of the following:
 *       1 Ascending
 *       2 Descending
 */
@interface MPSEWSSortDirectionType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse SortDirectionType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Ascending;
+ (NSString *) Descending;
@end

