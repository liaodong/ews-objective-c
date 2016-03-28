#import <Foundation/Foundation.h>



@class EWSBasePathToElementType;



/* NonEmptyArrayOfPathsToElementType */
@interface EWSNonEmptyArrayOfPathsToElementType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSBasePathToElementType* path;


@end

