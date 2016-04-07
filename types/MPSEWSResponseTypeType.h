#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ResponseTypeType can be one of the following:
 *       1 Unknown
 *       2 Organizer
 *       3 Tentative
 *       4 Accept
 *       5 Decline
 *       6 NoResponseReceived
 */
@interface MPSEWSResponseTypeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ResponseTypeType */
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
+ (NSString *) Unknown;
+ (NSString *) Organizer;
+ (NSString *) Tentative;
+ (NSString *) Accept;
+ (NSString *) Decline;
+ (NSString *) NoResponseReceived;
@end

