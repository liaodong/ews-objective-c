#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: DistinguishedPropertySetType can be one of the following:
 *       1 Meeting
 *       2 Appointment
 *       3 Common
 *       4 PublicStrings
 *       5 Address
 *       6 InternetHeaders
 *       7 CalendarAssistant
 *       8 UnifiedMessaging
 *       9 Task
 */
@interface MPSEWSDistinguishedPropertySetType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse DistinguishedPropertySetType */
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
+ (NSString *) Meeting;
+ (NSString *) Appointment;
+ (NSString *) Common;
+ (NSString *) PublicStrings;
+ (NSString *) Address;
+ (NSString *) InternetHeaders;
+ (NSString *) CalendarAssistant;
+ (NSString *) UnifiedMessaging;
+ (NSString *) Task;
@end

