#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: DisposalType can be one of the following:
 *       1 HardDelete
 *       2 SoftDelete
 *       3 MoveToDeletedItems
 */
@interface EWSDisposalType : EWSSimpleTypeHandler 

/** Register a handler to parse DisposalType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) HardDelete;
+ (NSString *) SoftDelete;
+ (NSString *) MoveToDeletedItems;
@end

