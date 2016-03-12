#import <Foundation/Foundation.h>




#import "EWSPermissionActionType.h"
#import "EWSUserIdType.h"
#import "../handlers/EWSBooleanTypeHandler.h"



/* BasePermissionType */
@interface EWSBasePermissionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSUserIdType* userId;
@property (retain) NSNumber*      canCreateItems       /* xs:boolean */;
@property (retain) NSNumber*      canCreateSubFolders  /* xs:boolean */;
@property (retain) NSNumber*      isFolderOwner        /* xs:boolean */;
@property (retain) NSNumber*      isFolderVisible      /* xs:boolean */;
@property (retain) NSNumber*      isFolderContact      /* xs:boolean */;
@property (retain) NSString*      editItems            /* EWSPermissionActionType */;
@property (retain) NSString*      deleteItems          /* EWSPermissionActionType */;


@end

