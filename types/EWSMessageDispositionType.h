#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: MessageDispositionType can be one of the following:
 *       1 SaveOnly
 *       2 SendOnly
 *       3 SendAndSaveCopy
 */
@interface EWSMessageDispositionType : EWSSimpleTypeHandler 

/** Register a handler to parse MessageDispositionType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) SaveOnly;
+ (NSString *) SendOnly;
+ (NSString *) SendAndSaveCopy;
@end

