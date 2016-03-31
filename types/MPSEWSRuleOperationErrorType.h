#import <Foundation/Foundation.h>



@class MPSEWSArrayOfRuleValidationErrorsType;



/* RuleOperationErrorType */
@interface MPSEWSRuleOperationErrorType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRuleOperationErrorType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                              operationIndex    /* xs:int */;
@property (strong) MPSEWSArrayOfRuleValidationErrorsType* validationErrors;


@end

