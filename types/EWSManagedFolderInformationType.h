#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSIntegerTypeHandler.h"



/* ManagedFolderInformationType */
@interface EWSManagedFolderInformationType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* canDelete             /* xs:boolean */;
@property (retain) NSNumber* canRenameOrMove       /* xs:boolean */;
@property (retain) NSNumber* mustDisplayComment    /* xs:boolean */;
@property (retain) NSNumber* hasQuota              /* xs:boolean */;
@property (retain) NSNumber* isManagedFoldersRoot  /* xs:boolean */;
@property (retain) NSString* managedFolderId       /* xs:string */;
@property (retain) NSString* comment               /* xs:string */;
@property (retain) NSNumber* storageQuota          /* xs:int */;
@property (retain) NSNumber* folderSize            /* xs:int */;
@property (retain) NSString* homePage              /* xs:string */;


@end

