#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSArrayOfFoldersType;



/* FolderInfoResponseMessageType */
@interface EWSFolderInfoResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfFoldersType* folders;


@end

