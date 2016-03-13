#import <Foundation/Foundation.h>




#import "../types/EWSArrayOfFoldersType.h"
#import "EWSResponseMessageType.h"



/* FolderInfoResponseMessageType */
@interface EWSFolderInfoResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSArrayOfFoldersType* folders;


@end

