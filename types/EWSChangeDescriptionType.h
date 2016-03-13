#import <Foundation/Foundation.h>




#import "../types/EWSBasePathToElementType.h"



/* ChangeDescriptionType */
@interface EWSChangeDescriptionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSBasePathToElementType* path;


@end

