#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSArrayOfRuleOperationsType;



/* UpdateInboxRulesRequestType */
@interface MPSEWSUpdateInboxRulesRequestType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateInboxRulesRequestType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                        mailboxSmtpAddress     /* xs:string */;
@property (strong) NSNumber*                        removeOutlookRuleBlob  /* xs:boolean */;
@property (strong) MPSEWSArrayOfRuleOperationsType* operations;


@end

