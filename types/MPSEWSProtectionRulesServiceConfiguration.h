#import <Foundation/Foundation.h>
#import "MPSEWSServiceConfiguration.h"



@class MPSEWSArrayOfProtectionRulesType;
@class MPSEWSSmtpDomainList;



/* ProtectionRulesServiceConfiguration */
@interface MPSEWSProtectionRulesServiceConfiguration : MPSEWSServiceConfiguration

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRulesServiceConfiguration*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                         refreshInterval  /* xs:int */;
@property (strong) MPSEWSArrayOfProtectionRulesType* rules;
@property (strong) MPSEWSSmtpDomainList*             internalDomains;


@end

