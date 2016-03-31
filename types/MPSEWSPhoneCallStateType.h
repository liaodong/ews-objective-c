#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: PhoneCallStateType can be one of the following:
 *       1 Idle
 *       2 Connecting
 *       3 Alerted
 *       4 Connected
 *       5 Disconnected
 *       6 Incoming
 *       7 Transferring
 *       8 Forwarding
 */
@interface MPSEWSPhoneCallStateType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse PhoneCallStateType */
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
+ (NSString *) Idle;
+ (NSString *) Connecting;
+ (NSString *) Alerted;
+ (NSString *) Connected;
+ (NSString *) Disconnected;
+ (NSString *) Incoming;
+ (NSString *) Transferring;
+ (NSString *) Forwarding;
@end

