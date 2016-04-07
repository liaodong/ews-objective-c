#import <Foundation/Foundation.h>
#import "MPSEWSSearchExpressionType.h"



@class MPSEWSBasePathToElementType;
@class MPSEWSConstantValueType;



/* ContainsExpressionType */
@interface MPSEWSContainsExpressionType : MPSEWSSearchExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSContainsExpressionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                    containmentMode        /* MPSEWSContainmentModeType */;
@property (strong) NSString*                    containmentComparison  /* MPSEWSContainmentComparisonType */;
@property (strong) MPSEWSBasePathToElementType* path;
@property (strong) MPSEWSConstantValueType*     constant;


@end

