#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSEnumeratedListTypeHandler.h"


/** SimpleType: ServiceConfigurationType can be one of the following:
 *       1 MailTips
 *       2 UnifiedMessagingConfiguration
 *       3 ProtectionRules
 */
@interface MPSEWSServiceConfigurationType : MPSEWSEnumeratedListTypeHandler 

/** Register a handler to parse ServiceConfigurationType */
+ (void) initialize;
+ (BOOL) isValid:(NSArray<NSString*>*)val forVersion:(MPSEWSExchangeVersion) ver;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;


/* Valid values */
+ (NSString *) MailTips;
+ (NSString *) UnifiedMessagingConfiguration;
+ (NSString *) ProtectionRules;
@end

