#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: DeliverMeetingRequestsType can be one of the following:
 *       1 DelegatesOnly
 *       2 DelegatesAndMe
 *       3 DelegatesAndSendInformationToMe
 *       4 NoForward
 */
@interface MPSEWSDeliverMeetingRequestsType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse DeliverMeetingRequestsType */
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
+ (NSString *) DelegatesOnly;
+ (NSString *) DelegatesAndMe;
+ (NSString *) DelegatesAndSendInformationToMe;
+ (NSString *) NoForward;
@end

