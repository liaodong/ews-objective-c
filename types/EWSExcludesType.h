#import <Foundation/Foundation.h>




#import "EWSBasePathToElementType.h"
#import "EWSExcludesValueType.h"
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

