#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: MeetingRequestTypeType can be one of the following:
 *       1 None
 *       2 FullUpdate
 *       3 InformationalUpdate
 *       4 NewMeetingRequest
 *       5 Outdated
 *       6 SilentUpdate
 *       7 PrincipalWantsCopy
 */
@interface MPSEWSMeetingRequestTypeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse MeetingRequestTypeType */
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
+ (NSString *) FullUpdate;
+ (NSString *) InformationalUpdate;
+ (NSString *) NewMeetingRequest;
+ (NSString *) Outdated;
+ (NSString *) SilentUpdate;
+ (NSString *) PrincipalWantsCopy;
@end

