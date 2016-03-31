#import <Foundation/Foundation.h>



@class MPSEWSProtectionRuleType;



/* ArrayOfProtectionRulesType */
@interface MPSEWSArrayOfProtectionRulesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfProtectionRulesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSProtectionRuleType*>* rule;


- (void) addRule:(MPSEWSProtectionRuleType*) elem;
@end

