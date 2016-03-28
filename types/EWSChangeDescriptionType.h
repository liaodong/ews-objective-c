#import <Foundation/Foundation.h>



@class EWSBasePathToElementType;



/* ChangeDescriptionType */
@interface EWSChangeDescriptionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSBasePathToElementType* path;


@end

