#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSProtectionRuleType;



/* ArrayOfProtectionRulesType */
@interface MPSEWSArrayOfProtectionRulesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfProtectionRulesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSProtectionRuleType*>* rule;


- (void) addRule:(MPSEWSProtectionRuleType*) elem;
@end

