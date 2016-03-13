#import <Foundation/Foundation.h>




#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSExcludesValueType.h"
#import "EWSSearchExpressionType.h"



/* ExcludesType */
@interface EWSExcludesType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSBasePathToElementType* path;
@property (retain) EWSExcludesValueType*     bitmask;


@end

