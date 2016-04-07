#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfRulesType;



/* GetInboxRulesResponseType */
@interface MPSEWSGetInboxRulesResponseType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetInboxRulesResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*               outlookRuleBlobExists  /* xs:boolean */;
@property (strong) MPSEWSArrayOfRulesType* inboxRules;


@end

