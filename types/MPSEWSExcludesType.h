#import <Foundation/Foundation.h>
#import "MPSEWSSearchExpressionType.h"



@class MPSEWSBasePathToElementType;
@class MPSEWSExcludesValueType;



/* ExcludesType */
@interface MPSEWSExcludesType : MPSEWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBasePathToElementType* path;
@property (strong) MPSEWSExcludesValueType*     bitmask;


@end

