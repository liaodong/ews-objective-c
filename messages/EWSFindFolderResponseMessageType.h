#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSFindFolderParentType;



/* FindFolderResponseMessageType */
@interface EWSFindFolderResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSFindFolderParentType* rootFolder;


@end

