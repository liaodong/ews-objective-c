#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSRuleValidationErrorType;



/* ArrayOfRuleValidationErrorsType */
@interface MPSEWSArrayOfRuleValidationErrorsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRuleValidationErrorsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRuleValidationErrorType*>* error;


- (void) addError:(MPSEWSRuleValidationErrorType*) elem;
@end

