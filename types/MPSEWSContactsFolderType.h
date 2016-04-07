#import <Foundation/Foundation.h>
#import "MPSEWSBaseFolderType.h"



@class MPSEWSPermissionSetType;



/* ContactsFolderType */
@interface MPSEWSContactsFolderType : MPSEWSBaseFolderType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSContactsFolderType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                sharingEffectiveRights  /* MPSEWSPermissionReadAccessType */;
@property (strong) MPSEWSPermissionSetType* permissionSet;


@end

