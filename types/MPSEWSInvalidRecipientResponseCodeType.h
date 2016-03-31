#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: InvalidRecipientResponseCodeType can be one of the following:
 *       1 OtherError
 *       2 RecipientOrganizationNotFederated
 *       3 CannotObtainTokenFromSTS
 *       4 SystemPolicyBlocksSharingWithThisRecipient
 *       5 RecipientOrganizationFederatedWithUnknownTokenIssuer
 */
@interface MPSEWSInvalidRecipientResponseCodeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse InvalidRecipientResponseCodeType */
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
+ (NSString *) OtherError;
+ (NSString *) RecipientOrganizationNotFederated;
+ (NSString *) CannotObtainTokenFromSTS;
+ (NSString *) SystemPolicyBlocksSharingWithThisRecipient;
+ (NSString *) RecipientOrganizationFederatedWithUnknownTokenIssuer;
@end

