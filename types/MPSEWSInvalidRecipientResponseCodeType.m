#import <Foundation/Foundation.h>

#import "MPSEWSInvalidRecipientResponseCodeType.h"
@implementation MPSEWSInvalidRecipientResponseCodeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSInvalidRecipientResponseCodeType OtherError], 
                                         [MPSEWSInvalidRecipientResponseCodeType RecipientOrganizationNotFederated], 
                                         [MPSEWSInvalidRecipientResponseCodeType CannotObtainTokenFromSTS], 
                                         [MPSEWSInvalidRecipientResponseCodeType SystemPolicyBlocksSharingWithThisRecipient], 
                                         [MPSEWSInvalidRecipientResponseCodeType RecipientOrganizationFederatedWithUnknownTokenIssuer], nil];
    [[[MPSEWSInvalidRecipientResponseCodeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSInvalidRecipientResponseCodeType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [enumerations containsObject:s] ? [enumerations member:s] : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([enumerations containsObject:obj], @"String is a enumerated list");
    [buffer appendString:((NSString*) object)];
}

+ (NSString *) OtherError { return @"OtherError"; }
+ (NSString *) RecipientOrganizationNotFederated { return @"RecipientOrganizationNotFederated"; }
+ (NSString *) CannotObtainTokenFromSTS { return @"CannotObtainTokenFromSTS"; }
+ (NSString *) SystemPolicyBlocksSharingWithThisRecipient { return @"SystemPolicyBlocksSharingWithThisRecipient"; }
+ (NSString *) RecipientOrganizationFederatedWithUnknownTokenIssuer { return @"RecipientOrganizationFederatedWithUnknownTokenIssuer"; }
@end

