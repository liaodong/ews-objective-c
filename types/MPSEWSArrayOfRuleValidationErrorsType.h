#import <Foundation/Foundation.h>



@class MPSEWSRuleValidationErrorType;



/* ArrayOfRuleValidationErrorsType */
@interface MPSEWSArrayOfRuleValidationErrorsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRuleValidationErrorsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRuleValidationErrorType*>* error;


- (void) addError:(MPSEWSRuleValidationErrorType*) elem;
@end

