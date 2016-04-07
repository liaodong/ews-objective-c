#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ManagedFolderInformationType */
@interface MPSEWSManagedFolderInformationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSManagedFolderInformationType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* canDelete             /* xs:boolean */;
@property (strong) NSNumber* canRenameOrMove       /* xs:boolean */;
@property (strong) NSNumber* mustDisplayComment    /* xs:boolean */;
@property (strong) NSNumber* hasQuota              /* xs:boolean */;
@property (strong) NSNumber* isManagedFoldersRoot  /* xs:boolean */;
@property (strong) NSString* managedFolderId       /* xs:string */;
@property (strong) NSString* comment               /* xs:string */;
@property (strong) NSNumber* storageQuota          /* xs:int */;
@property (strong) NSNumber* folderSize            /* xs:int */;
@property (strong) NSString* homePage              /* xs:string */;


@end

