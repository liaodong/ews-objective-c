#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSSearchExpressionType;



/* RestrictionType */
@interface MPSEWSRestrictionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRestrictionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSearchExpressionType* searchExpression;


@end

