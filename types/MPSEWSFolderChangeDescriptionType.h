#import <Foundation/Foundation.h>
#import "MPSEWSChangeDescriptionType.h"






/* FolderChangeDescriptionType */
@interface MPSEWSFolderChangeDescriptionType : MPSEWSChangeDescriptionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFolderChangeDescriptionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

