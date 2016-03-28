#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** ReminderMinutesBeforeStartType 
  * The valid values are [0, 2629800] or [1525252321]
  */
@interface MPSEWSReminderMinutesBeforeStartType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ReminderMinutesBeforeStartType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;

/** Process the characters */
- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer forObject:(NSNumber*) object;

@end

