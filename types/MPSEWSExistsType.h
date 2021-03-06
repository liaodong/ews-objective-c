#import <Foundation/Foundation.h>
#import "MPSEWSSearchExpressionType.h"



@class MPSEWSBasePathToElementType;



/* ExistsType */
@interface MPSEWSExistsType : MPSEWSSearchExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSExistsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBasePathToElementType* path;


@end

