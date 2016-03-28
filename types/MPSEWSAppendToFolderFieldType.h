#import <Foundation/Foundation.h>
#import "MPSEWSFolderChangeDescriptionType.h"






/* AppendToFolderFieldType */
@interface MPSEWSAppendToFolderFieldType : MPSEWSFolderChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

