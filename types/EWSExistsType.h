#import <Foundation/Foundation.h>
#import "EWSSearchExpressionType.h"



@class EWSBasePathToElementType;



/* ExistsType */
@interface EWSExistsType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSBasePathToElementType* path;


@end

