#import <Foundation/Foundation.h>
#import "MPSEWSBaseFolderType.h"



@class MPSEWSPermissionSetType;



/* FolderType */
@interface MPSEWSFolderType : MPSEWSBaseFolderType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFolderType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPermissionSetType* permissionSet;
@property (strong) NSNumber*                unreadCount    /* xs:int */;


@end

