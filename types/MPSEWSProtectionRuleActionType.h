#import <Foundation/Foundation.h>



@class MPSEWSProtectionRuleArgumentType;



/* ProtectionRuleActionType */
@interface MPSEWSProtectionRuleActionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleActionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                          name      /* MPSEWSProtectionRuleActionKindType */;
@property (strong) NSMutableArray<MPSEWSProtectionRuleArgumentType*>* argument;


- (void) addArgument:(MPSEWSProtectionRuleArgumentType*) elem;
@end

