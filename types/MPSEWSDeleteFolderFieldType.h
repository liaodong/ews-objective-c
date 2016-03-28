#import <Foundation/Foundation.h>
#import "MPSEWSFolderChangeDescriptionType.h"






/* DeleteFolderFieldType */
@interface MPSEWSDeleteFolderFieldType : MPSEWSFolderChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

