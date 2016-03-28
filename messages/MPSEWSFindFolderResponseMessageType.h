#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSFindFolderParentType;



/* FindFolderResponseMessageType */
@interface MPSEWSFindFolderResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFindFolderParentType* rootFolder;


@end

