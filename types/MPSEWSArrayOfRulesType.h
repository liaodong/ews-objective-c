#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSRuleType;



/* ArrayOfRulesType */
@interface MPSEWSArrayOfRulesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRulesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRuleType*>* rule;


- (void) addRule:(MPSEWSRuleType*) elem;
@end

