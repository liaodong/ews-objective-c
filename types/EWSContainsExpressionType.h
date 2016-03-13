#import <Foundation/Foundation.h>




#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSConstantValueType.h"
#import "../types/EWSContainmentComparisonType.h"
#import "../types/EWSContainmentModeType.h"
#import "EWSSearchExpressionType.h"



/* ContainsExpressionType */
@interface EWSContainsExpressionType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                 containmentMode        /* EWSContainmentModeType */;
@property (retain) NSString*                 containmentComparison  /* EWSContainmentComparisonType */;
@property (retain) EWSBasePathToElementType* path;
@property (retain) EWSConstantValueType*     constant;


@end

