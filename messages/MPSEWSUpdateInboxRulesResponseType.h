#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfRuleOperationErrorsType;



/* UpdateInboxRulesResponseType */
@interface MPSEWSUpdateInboxRulesResponseType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateInboxRulesResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfRuleOperationErrorsType* ruleOperationErrors;


@end

