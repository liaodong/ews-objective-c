#import <Foundation/Foundation.h>
#import "MPSEWSFolderType.h"






/* TasksFolderType */
@interface MPSEWSTasksFolderType : MPSEWSFolderType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTasksFolderType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

