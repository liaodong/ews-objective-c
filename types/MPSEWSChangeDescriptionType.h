#import <Foundation/Foundation.h>



@class MPSEWSBasePathToElementType;



/* ChangeDescriptionType */
@interface MPSEWSChangeDescriptionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSChangeDescriptionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBasePathToElementType* path;


@end

