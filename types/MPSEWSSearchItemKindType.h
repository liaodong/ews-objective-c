#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: SearchItemKindType can be one of the following:
 *       1 Email
 *       2 Meetings
 *       3 Tasks
 *       4 Notes
 *       5 Docs
 *       6 Journals
 *       7 Contacts
 *       8 Im
 *       9 Voicemail
 *       10 Faxes
 *       11 Posts
 *       12 Rssfeeds
 */
@interface MPSEWSSearchItemKindType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse SearchItemKindType */
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
+ (NSString *) Email;
+ (NSString *) Meetings;
+ (NSString *) Tasks;
+ (NSString *) Notes;
+ (NSString *) Docs;
+ (NSString *) Journals;
+ (NSString *) Contacts;
+ (NSString *) Im;
+ (NSString *) Voicemail;
+ (NSString *) Faxes;
+ (NSString *) Posts;
+ (NSString *) Rssfeeds;
@end

