#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: CalendarPermissionLevelType can be one of the following:
 *       1 None
 *       2 Owner
 *       3 PublishingEditor
 *       4 Editor
 *       5 PublishingAuthor
 *       6 Author
 *       7 NoneditingAuthor
 *       8 Reviewer
 *       9 Contributor
 *       10 FreeBusyTimeOnly
 *       11 FreeBusyTimeAndSubjectAndLocation
 *       12 Custom
 */
@interface MPSEWSCalendarPermissionLevelType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse CalendarPermissionLevelType */
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
+ (NSString *) None;
+ (NSString *) Owner;
+ (NSString *) PublishingEditor;
+ (NSString *) Editor;
+ (NSString *) PublishingAuthor;
+ (NSString *) Author;
+ (NSString *) NoneditingAuthor;
+ (NSString *) Reviewer;
+ (NSString *) Contributor;
+ (NSString *) FreeBusyTimeOnly;
+ (NSString *) FreeBusyTimeAndSubjectAndLocation;
+ (NSString *) Custom;
@end

