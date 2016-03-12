#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: OofState can be one of the following:
 *       1 Disabled
 *       2 Enabled
 *       3 Scheduled
 */
@interface EWSOofState : EWSSimpleTypeHandler 

/** Register a handler to parse OofState */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Disabled;
+ (NSString *) Enabled;
+ (NSString *) Scheduled;
@end

