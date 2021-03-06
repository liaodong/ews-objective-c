#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSUserIdType;



/* BasePermissionType */
@interface MPSEWSBasePermissionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBasePermissionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserIdType* userId;
@property (strong) NSNumber*         canCreateItems       /* xs:boolean */;
@property (strong) NSNumber*         canCreateSubFolders  /* xs:boolean */;
@property (strong) NSNumber*         isFolderOwner        /* xs:boolean */;
@property (strong) NSNumber*         isFolderVisible      /* xs:boolean */;
@property (strong) NSNumber*         isFolderContact      /* xs:boolean */;
@property (strong) NSString*         editItems            /* MPSEWSPermissionActionType */;
@property (strong) NSString*         deleteItems          /* MPSEWSPermissionActionType */;


@end

