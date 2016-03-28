#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfFoldersType;



/* FolderInfoResponseMessageType */
@interface MPSEWSFolderInfoResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfFoldersType* folders;


@end

