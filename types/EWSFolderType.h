#import <Foundation/Foundation.h>
#import "EWSBaseFolderType.h"



@class EWSPermissionSetType;



/* FolderType */
@interface EWSFolderType : EWSBaseFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSPermissionSetType* permissionSet;
@property (strong) NSNumber*             unreadCount    /* xs:int */;


@end

