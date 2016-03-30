#import <Foundation/Foundation.h>
#import "MPSEWSFolderChangeDescriptionType.h"






/* DeleteFolderFieldType */
@interface MPSEWSDeleteFolderFieldType : MPSEWSFolderChangeDescriptionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeleteFolderFieldType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

