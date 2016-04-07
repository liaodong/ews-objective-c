#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ConflictResolutionType can be one of the following:
 *       1 NeverOverwrite
 *       2 AutoResolve
 *       3 AlwaysOverwrite
 */
@interface MPSEWSConflictResolutionType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ConflictResolutionType */
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
+ (NSString *) NeverOverwrite;
+ (NSString *) AutoResolve;
+ (NSString *) AlwaysOverwrite;
@end

