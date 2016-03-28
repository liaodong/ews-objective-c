#import <Foundation/Foundation.h>
#import "EWSFolderChangeDescriptionType.h"






/* DeleteFolderFieldType */
@interface EWSDeleteFolderFieldType : EWSFolderChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

