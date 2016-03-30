#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: DelegateFolderPermissionLevelType can be one of the following:
 *       1 None
 *       2 Editor
 *       3 Reviewer
 *       4 Author
 *       5 Custom
 */
@interface MPSEWSDelegateFolderPermissionLevelType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse DelegateFolderPermissionLevelType */
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
+ (NSString *) None;
+ (NSString *) Editor;
+ (NSString *) Reviewer;
+ (NSString *) Author;
+ (NSString *) Custom;
@end

