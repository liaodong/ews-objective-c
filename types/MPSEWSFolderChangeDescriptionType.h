#import <Foundation/Foundation.h>
#import "MPSEWSChangeDescriptionType.h"






/* FolderChangeDescriptionType */
@interface MPSEWSFolderChangeDescriptionType : MPSEWSChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

