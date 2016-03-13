#import <Foundation/Foundation.h>




#import "EWSBasePathToElementType.h"
#import "EWSContainmentModeType.h"
#import "EWSContainmentComparisonType.h"
#import "EWSConstantValueType.h"
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

