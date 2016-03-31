#import <Foundation/Foundation.h>



@class MPSEWSProtectionRuleAndType;
@class MPSEWSProtectionRuleRecipientIsType;
@class MPSEWSProtectionRuleSenderDepartmentsType;



/* ProtectionRuleAndType */
@interface MPSEWSProtectionRuleAndType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleAndType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>*                                  allInternal       /* MPSEWSProtectionRuleAllInternalType */;
@property (strong) NSMutableArray<MPSEWSProtectionRuleAndType*>*               and;
@property (strong) NSMutableArray<MPSEWSProtectionRuleRecipientIsType*>*       recipientIs;
@property (strong) NSMutableArray<MPSEWSProtectionRuleSenderDepartmentsType*>* senderDepartments;
@property (strong) NSMutableArray<NSString*>*                                  pTrue             /* MPSEWSProtectionRuleTrueType */;


- (void) addAllInternal:(NSString*) elem;
- (void) addAnd:(MPSEWSProtectionRuleAndType*) elem;
- (void) addRecipientIs:(MPSEWSProtectionRuleRecipientIsType*) elem;
- (void) addSenderDepartments:(MPSEWSProtectionRuleSenderDepartmentsType*) elem;
- (void) addTrue:(NSString*) elem;
@end

