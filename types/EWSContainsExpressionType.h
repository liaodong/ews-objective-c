#import <Foundation/Foundation.h>
#import "EWSSearchExpressionType.h"



@class EWSBasePathToElementType;
@class EWSConstantValueType;



/* ContainsExpressionType */
@interface EWSContainsExpressionType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                 containmentMode        /* EWSContainmentModeType */;
@property (strong) NSString*                 containmentComparison  /* EWSContainmentComparisonType */;
@property (strong) EWSBasePathToElementType* path;
@property (strong) EWSConstantValueType*     constant;


@end

