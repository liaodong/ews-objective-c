#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSProtectionRuleActionType;
@class MPSEWSProtectionRuleConditionType;



/* ProtectionRuleType */
@interface MPSEWSProtectionRuleType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                          name             /* xs:string */;
@property (strong) NSNumber*                          userOverridable  /* xs:boolean */;
@property (strong) NSNumber*                          priority         /* xs:int */;
@property (strong) MPSEWSProtectionRuleConditionType* condition;
@property (strong) MPSEWSProtectionRuleActionType*    action;


@end

