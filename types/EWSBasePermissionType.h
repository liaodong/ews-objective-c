#import <Foundation/Foundation.h>



@class EWSUserIdType;



/* BasePermissionType */
@interface EWSBasePermissionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSUserIdType* userId;
@property (strong) NSNumber*      canCreateItems       /* xs:boolean */;
@property (strong) NSNumber*      canCreateSubFolders  /* xs:boolean */;
@property (strong) NSNumber*      isFolderOwner        /* xs:boolean */;
@property (strong) NSNumber*      isFolderVisible      /* xs:boolean */;
@property (strong) NSNumber*      isFolderContact      /* xs:boolean */;
@property (strong) NSString*      editItems            /* EWSPermissionActionType */;
@property (strong) NSString*      deleteItems          /* EWSPermissionActionType */;


@end

