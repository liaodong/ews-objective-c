#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: MailboxTypeType can be one of the following:
 *       1 Mailbox
 *       2 PublicDL
 *       3 PrivateDL
 *       4 Contact
 *       5 PublicFolder
 */
@interface MPSEWSMailboxTypeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse MailboxTypeType */
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
+ (NSString *) Mailbox;
+ (NSString *) PublicDL;
+ (NSString *) PrivateDL;
+ (NSString *) Contact;
+ (NSString *) PublicFolder;
@end

