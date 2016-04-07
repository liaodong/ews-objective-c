#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSRuleOperationErrorType;



/* ArrayOfRuleOperationErrorsType */
@interface MPSEWSArrayOfRuleOperationErrorsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRuleOperationErrorsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRuleOperationErrorType*>* ruleOperationError;


- (void) addRuleOperationError:(MPSEWSRuleOperationErrorType*) elem;
@end

