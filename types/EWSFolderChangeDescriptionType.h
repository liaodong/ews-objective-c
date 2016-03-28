#import <Foundation/Foundation.h>
#import "EWSChangeDescriptionType.h"






/* FolderChangeDescriptionType */
@interface EWSFolderChangeDescriptionType : EWSChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

