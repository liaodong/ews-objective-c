#import <Foundation/Foundation.h>



@class MPSEWSProtectionRuleAndType;
@class MPSEWSProtectionRuleRecipientIsType;
@class MPSEWSProtectionRuleSenderDepartmentsType;



/* ProtectionRuleConditionType */
@interface MPSEWSProtectionRuleConditionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleConditionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                  allInternal        /* MPSEWSProtectionRuleAllInternalType */;
@property (strong) MPSEWSProtectionRuleAndType*               and;
@property (strong) MPSEWSProtectionRuleRecipientIsType*       recipientIs;
@property (strong) MPSEWSProtectionRuleSenderDepartmentsType* senderDepartments;
@property (strong) NSString*                                  pTrue              /* MPSEWSProtectionRuleTrueType */;


@end

