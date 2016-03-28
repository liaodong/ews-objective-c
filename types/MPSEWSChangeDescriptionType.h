#import <Foundation/Foundation.h>



@class MPSEWSBasePathToElementType;



/* ChangeDescriptionType */
@interface MPSEWSChangeDescriptionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBasePathToElementType* path;


@end

