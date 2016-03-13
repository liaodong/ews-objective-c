#import <Foundation/Foundation.h>




#import "EWSFolderType.h"



/* TasksFolderType */
@interface EWSTasksFolderType : EWSFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

