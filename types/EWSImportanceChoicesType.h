#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: ImportanceChoicesType can be one of the following:
 *       1 Low
 *       2 Normal
 *       3 High
 */
@interface EWSImportanceChoicesType : EWSSimpleTypeHandler 

/** Register a handler to parse ImportanceChoicesType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Low;
+ (NSString *) Normal;
+ (NSString *) High;
@end

