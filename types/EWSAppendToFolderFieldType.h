#import <Foundation/Foundation.h>
#import "EWSFolderChangeDescriptionType.h"






/* AppendToFolderFieldType */
@interface EWSAppendToFolderFieldType : EWSFolderChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

