#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: DefaultShapeNamesType can be one of the following:
 *       1 IdOnly
 *       2 Default
 *       3 AllProperties
 */
@interface EWSDefaultShapeNamesType : EWSSimpleTypeHandler 

/** Register a handler to parse DefaultShapeNamesType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) IdOnly;
+ (NSString *) Default;
+ (NSString *) AllProperties;
@end

