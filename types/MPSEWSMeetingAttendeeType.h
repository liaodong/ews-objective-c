#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: MeetingAttendeeType can be one of the following:
 *       1 Organizer
 *       2 Required
 *       3 Optional
 *       4 Room
 *       5 Resource
 */
@interface MPSEWSMeetingAttendeeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse MeetingAttendeeType */
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
+ (NSString *) Organizer;
+ (NSString *) Required;
+ (NSString *) Optional;
+ (NSString *) Room;
+ (NSString *) Resource;
@end

