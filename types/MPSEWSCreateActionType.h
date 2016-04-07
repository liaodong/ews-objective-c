#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: CreateActionType can be one of the following:
 *       1 CreateNew
 *       2 Update
 *       3 UpdateOrCreate
 */
@interface MPSEWSCreateActionType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse CreateActionType */
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
+ (NSString *) CreateNew;
+ (NSString *) Update;
+ (NSString *) UpdateOrCreate;
@end

