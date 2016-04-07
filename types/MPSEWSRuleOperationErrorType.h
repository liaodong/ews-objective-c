#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfRuleValidationErrorsType;



/* RuleOperationErrorType */
@interface MPSEWSRuleOperationErrorType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRuleOperationErrorType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                              operationIndex    /* xs:int */;
@property (strong) MPSEWSArrayOfRuleValidationErrorsType* validationErrors;


@end

