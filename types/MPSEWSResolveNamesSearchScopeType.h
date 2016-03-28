#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ResolveNamesSearchScopeType can be one of the following:
 *       1 ActiveDirectory
 *       2 ActiveDirectoryContacts
 *       3 Contacts
 *       4 ContactsActiveDirectory
 */
@interface MPSEWSResolveNamesSearchScopeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ResolveNamesSearchScopeType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) ActiveDirectory;
+ (NSString *) ActiveDirectoryContacts;
+ (NSString *) Contacts;
+ (NSString *) ContactsActiveDirectory;
@end

