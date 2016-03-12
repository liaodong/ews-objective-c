#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: NotificationEventTypeType can be one of the following:
 *       1 CopiedEvent
 *       2 CreatedEvent
 *       3 DeletedEvent
 *       4 ModifiedEvent
 *       5 MovedEvent
 *       6 NewMailEvent
 */
@interface EWSNotificationEventTypeType : EWSSimpleTypeHandler 

/** Register a handler to parse NotificationEventTypeType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) CopiedEvent;
+ (NSString *) CreatedEvent;
+ (NSString *) DeletedEvent;
+ (NSString *) ModifiedEvent;
+ (NSString *) MovedEvent;
+ (NSString *) NewMailEvent;
@end

