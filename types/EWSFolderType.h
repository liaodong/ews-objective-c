#import <Foundation/Foundation.h>




#import "EWSPermissionSetType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSBaseFolderType.h"



/* FolderType */
@interface EWSFolderType : EWSBaseFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSPermissionSetType* permissionSet;
@property (retain) NSNumber*             unreadCount    /* xs:int */;


@end

