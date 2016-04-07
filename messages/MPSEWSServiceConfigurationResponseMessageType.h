#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSMailTipsServiceConfiguration;
@class MPSEWSProtectionRulesServiceConfiguration;
@class MPSEWSUnifiedMessageServiceConfiguration;



/* ServiceConfigurationResponseMessageType */
@interface MPSEWSServiceConfigurationResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSServiceConfigurationResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSMailTipsServiceConfiguration*        mailTipsConfiguration;
@property (strong) MPSEWSUnifiedMessageServiceConfiguration*  unifiedMessagingConfiguration;
@property (strong) MPSEWSProtectionRulesServiceConfiguration* protectionRulesConfiguration;


@end

