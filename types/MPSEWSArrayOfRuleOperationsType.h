#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSCreateRuleOperationType;
@class MPSEWSDeleteRuleOperationType;
@class MPSEWSSetRuleOperationType;



/* ArrayOfRuleOperationsType */
@interface MPSEWSArrayOfRuleOperationsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRuleOperationsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSCreateRuleOperationType*>* createRuleOperation;
@property (strong) NSMutableArray<MPSEWSSetRuleOperationType*>*    setRuleOperation;
@property (strong) NSMutableArray<MPSEWSDeleteRuleOperationType*>* deleteRuleOperation;


- (void) addCreateRuleOperation:(MPSEWSCreateRuleOperationType*) elem;
- (void) addSetRuleOperation:(MPSEWSSetRuleOperationType*) elem;
- (void) addDeleteRuleOperation:(MPSEWSDeleteRuleOperationType*) elem;
@end

