#import <Foundation/Foundation.h>
#import "EWSSearchExpressionType.h"



@class EWSBasePathToElementType;
@class EWSExcludesValueType;



/* ExcludesType */
@interface EWSExcludesType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSBasePathToElementType* path;
@property (strong) EWSExcludesValueType*     bitmask;


@end

