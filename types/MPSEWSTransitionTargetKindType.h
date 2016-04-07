#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: TransitionTargetKindType can be one of the following:
 *       1 Period
 *       2 Group
 */
@interface MPSEWSTransitionTargetKindType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse TransitionTargetKindType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val forVersion:(MPSEWSExchangeVersion) ver;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Period;
+ (NSString *) Group;
@end

