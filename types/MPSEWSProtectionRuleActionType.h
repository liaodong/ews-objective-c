#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSProtectionRuleArgumentType;



/* ProtectionRuleActionType */
@interface MPSEWSProtectionRuleActionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleActionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                          name      /* MPSEWSProtectionRuleActionKindType */;
@property (strong) NSMutableArray<MPSEWSProtectionRuleArgumentType*>* argument;


- (void) addArgument:(MPSEWSProtectionRuleArgumentType*) elem;
@end

