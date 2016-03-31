#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: DistinguishedFolderIdNameType can be one of the following:
 *       1 calendar
 *       2 contacts
 *       3 deleteditems
 *       4 drafts
 *       5 inbox
 *       6 journal
 *       7 notes
 *       8 outbox
 *       9 sentitems
 *       10 tasks
 *       11 msgfolderroot
 *       12 publicfoldersroot
 *       13 root
 *       14 junkemail
 *       15 searchfolders
 *       16 voicemail
 *       17 recoverableitemsroot
 *       18 recoverableitemsdeletions
 *       19 recoverableitemsversions
 *       20 recoverableitemspurges
 *       21 archiveroot
 *       22 archivemsgfolderroot
 *       23 archivedeleteditems
 *       24 archiverecoverableitemsroot
 *       25 archiverecoverableitemsdeletions
 *       26 archiverecoverableitemsversions
 *       27 archiverecoverableitemspurges
 */
@interface MPSEWSDistinguishedFolderIdNameType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse DistinguishedFolderIdNameType */
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
+ (NSString *) calendar;
+ (NSString *) contacts;
+ (NSString *) deleteditems;
+ (NSString *) drafts;
+ (NSString *) inbox;
+ (NSString *) journal;
+ (NSString *) notes;
+ (NSString *) outbox;
+ (NSString *) sentitems;
+ (NSString *) tasks;
+ (NSString *) msgfolderroot;
+ (NSString *) publicfoldersroot;
+ (NSString *) root;
+ (NSString *) junkemail;
+ (NSString *) searchfolders;
+ (NSString *) voicemail;
+ (NSString *) recoverableitemsroot;
+ (NSString *) recoverableitemsdeletions;
+ (NSString *) recoverableitemsversions;
+ (NSString *) recoverableitemspurges;
+ (NSString *) archiveroot;
+ (NSString *) archivemsgfolderroot;
+ (NSString *) archivedeleteditems;
+ (NSString *) archiverecoverableitemsroot;
+ (NSString *) archiverecoverableitemsdeletions;
+ (NSString *) archiverecoverableitemsversions;
+ (NSString *) archiverecoverableitemspurges;
@end

