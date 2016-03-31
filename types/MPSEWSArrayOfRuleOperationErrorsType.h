#import <Foundation/Foundation.h>



@class MPSEWSRuleOperationErrorType;



/* ArrayOfRuleOperationErrorsType */
@interface MPSEWSArrayOfRuleOperationErrorsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRuleOperationErrorsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRuleOperationErrorType*>* ruleOperationError;


- (void) addRuleOperationError:(MPSEWSRuleOperationErrorType*) elem;
@end

