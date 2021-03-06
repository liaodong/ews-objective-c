#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* RuleValidationErrorType */
@interface MPSEWSRuleValidationErrorType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRuleValidationErrorType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* fieldURI      /* MPSEWSRuleFieldURIType */;
@property (strong) NSString* errorCode     /* MPSEWSRuleValidationErrorCodeType */;
@property (strong) NSString* errorMessage  /* xs:string */;
@property (strong) NSString* fieldValue    /* xs:string */;


@end

