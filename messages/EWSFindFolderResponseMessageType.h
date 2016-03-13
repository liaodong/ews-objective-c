#import <Foundation/Foundation.h>




#import "../types/EWSFindFolderParentType.h"
#import "EWSResponseMessageType.h"



/* FindFolderResponseMessageType */
@interface EWSFindFolderResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSFindFolderParentType* rootFolder;


@end

